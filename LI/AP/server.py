#!/usr/bin/python3

import sys
import socket
import select
import json
import base64
import csv
import random
from common_comm import send_dict, recv_dict, sendrecv_dict

from Crypto.Cipher import AES

# Dicionário com a informação relativa aos clientes
users = {}

# return the client_id of a socket or None
def find_client_id (client_sock):
    client_id = None
    for id, info in users.items():
        for key in info:
            if info[key] == client_sock:
                client_id = id
    return client_id


# Função para encriptar valores a enviar em formato json com codificação base64
# return int data encrypted in a 16 bytes binary string and coded base64
def encrypt_intvalue (client_id, data): # not working
    if users[client_id]["cipher"] != None:
        cipher = AES.new (users[client_id]["cipher"], AES.MODE_ECB)
        data = cipher.encrypt (bytes("%16d" % (data), "utf8"))
        return str (base64.b64encode (data), "utf8")
    else:
        return data


# Função para desencriptar valores recebidos em formato json com codificação base64
# return int data decrypted from a 16 bytes binary string and coded base64
def decrypt_intvalue (client_id, data): # not working
    if users[client_id]["cipher"] != None:
        cipherkey = base64.b64decode (users[client_id]["cipher"])
        cipher = AES.new (cipherkey, AES.MODE_ECB)
        data = base64.b64decode (data)
        data = cipher.decrypt (data)
        return  int (str (data, "utf8"))
    else:
        return data


# Incomming message structure:
# { op = "START", client_id, [cipher] }
# { op = "QUIT" }
# { op = "NUMBER", number }
# { op = "STOP" }
#
# Outcomming message structure:
# { op = "START", status }
# { op = "QUIT" , status }
# { op = "NUMBER", status }
# { op = "STOP", status, min, max }


#
# Suporte de descodificação da operação pretendida pelo cliente
#
def new_msg (client_sock):
    request = recv_dict(client_sock)
    if request["op"] == "START":
        send_dict(client_sock, new_client(client_sock, request))
    elif request["op"] == "QUIT":
        send_dict(client_sock, quit_client(client_sock))
    elif request["op"] == "NUMBER":
        send_dict(client_sock, number_client(client_sock, request))
    elif request["op"] == "STOP":
        send_dict(client_sock,stop_client(client_sock))
        if stop_client(client_sock)["status"] == True:
            update_file(find_client_id(client_sock), stop_client(client_sock))
            clean_client(client_sock)
    return None
# read the client request
# detect the operation requested by the client
# execute the operation and obtain the response (consider also operations not available)
# send the response to the client


#
# Suporte da criação de um novo jogador - operação START
#
def new_client (client_sock, request):
    if request["client_id"] in users:
        return { "op": "START", "status": False, "error": "Cliente existente" }
    else:
        users.update({request["client_id"]: {"socket": client_sock, "cipher": request["cipher"], "numbers": []}})
        return {"op": "START", "status": True}
# detect the client in the request
# verify the appropriate conditions for executing this operation
# process the client in the dictionary
# return response message with or without error message


#
# Suporte da eliminação de um cliente
#
def clean_client (client_sock):
    if find_client_id(client_sock) != None:
        users.pop(find_client_id(client_sock))
        return True
    else:
        return False
# obtain the client_id from his socket and delete from the dictionary


#
# Suporte do pedido de desistência de um cliente - operação QUIT
#
def quit_client (client_sock):
    if find_client_id(client_sock) == None:
        return { "op": "QUIT", "status": False, "error": "Cliente inexistente" }
    else:
        clean_client(client_sock)
        return { "op": "QUIT", "status": True }
# obtain the client_id from his socket
# verify the appropriate conditions for executing this operation
# process the report file with the QUIT result
# eliminate client from dictionary
# return response message with or without error message


#
# Suporte da criação de um ficheiro csv com o respectivo cabeçalho
#
def create_file ():
    fout = open("report.csv", "w")
    header = ["client", "n of numbers", "min", "max"]
    writer = csv.DictWriter(fout, fieldnames=header)
    writer.writeheader()
    fout.close()
    return None
# create report csv file with header


#
# Suporte da actualização de um ficheiro csv com a informação do cliente e resultado
#
def update_file (client_id, result):
    with open("report.csv", "a", encoding="UTF8") as fout:
        header = ["client", "n of numbers", "min", "max"]
        writer = csv.DictWriter(fout, fieldnames=header)
        writer.writerow({"client": client_id, "n of numbers": len(users[client_id]["numbers"]), "min": result["min"], "max": result["max"]})
# update report csv file with the result from the client


#
# Suporte do processamento do número de um cliente - operação NUMBER
#
def number_client (client_sock, request):
    client_id = find_client_id(client_sock)
    if client_id == None:
        return { "op": "NUMBER", "status": False, "error": "Cliente inexistente" }
    else:
        users[client_id]["numbers"].append(decrypt_intvalue(client_id, request["number"]))
        return { "op": "NUMBER", "status": True }
# obtain the client_id from his socket
# verify the appropriate conditions for executing this operation
# return response message with or without error message


#
# Suporte do pedido de terminação de um cliente - operação STOP
#
def stop_client (client_sock):
    client_id = find_client_id(client_sock)
    if client_id == None:
        return { "op": "STOP", "status": False, "error": "Cliente inexistente" }
    elif len(users[client_id]["numbers"])<=0:
        return { "op": "STOP", "status": False, "error": "Dados insuficientes" }
    else:
        return { "op": "STOP", "status": True, "min": min(users[client_id]["numbers"]),"max": max(users[client_id]["numbers"]) }

# obtain the client_id from his socket
# verify the appropriate conditions for executing this operation
# process the report file with the result
# eliminate client from dictionary
# return response message with result or error message

def validArguments():
    if len(sys.argv)!=2:
        print("python3 %s port" % sys.argv[0])
        return False

    elif int(sys.argv[1])<0:
        print("python3 %s port\n%s^\nport argument must be a positive number" % (sys.argv[0], 18*" "))
        return False

    return True

def main():
    port = int(sys.argv[1])

    server_socket = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
    server_socket.bind (("127.0.0.1", port))
    server_socket.listen (10)

    clients = []
    create_file()

    while True:
        try:
            available = select.select ([server_socket] + clients, [], [])[0]
        except ValueError:
            # Sockets may have been closed, check for that
            for client_sock in clients:
                if client_sock.fileno () == -1: client_sock.remove (clients) # closed
            continue # Reiterate select

        for client_sock in available:
            # New client?
            if client_sock is server_socket:
                newclient, addr = server_socket.accept ()
                clients.append (newclient)
            # Or an existing client
            else:
                # See if client sent a message
                if len (client_sock.recv (1, socket.MSG_PEEK)) != 0:
                    # client socket has a message
                    ##print ("server" + str (client_sock))
                    new_msg (client_sock)
                else: # Or just disconnected
                    clients.remove (client_sock)
                    clean_client (client_sock)
                    client_sock.close ()
                    break # Reiterate select

if __name__ == "__main__":
    if validArguments():
        main()
