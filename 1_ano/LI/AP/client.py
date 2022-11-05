#!/usr/bin/python3

import os
import sys
import socket
import json
import base64
from common_comm import send_dict, recv_dict, sendrecv_dict
import re # for DNS name validation

from Crypto.Cipher import AES

# Função para encriptar valores a enviar em formato jsos com codificação base64
# return int data encrypted in a 16 bytes binary string coded in base64
def encrypt_intvalue (cipherkey, data): # not working
    if cipherkey != None:
        cipher = AES.new (cipherkey, AES.MODE_ECB)
        data = cipher.encrypt (bytes("%16d" % (data), "utf8"))
        return str (base64.b64encode (data), "utf8")
    else:
        return data


# Função para desencriptar valores recebidos em formato json com codificação base64
# return int data decrypted from a 16 bytes binary strings coded in base64
def decrypt_intvalue (cipherkey, data): # not working
    if cipherkey != None:
        cipher = AES.new (cipherkey, AES.MODE_ECB)
        data = base64.b64decode (data)
        data = cipher.decrypt (data)
        return  int (str (data, "utf8"))
    else:
        return data

# verify if response from server is valid or is an error message and act accordingly
def validate_response (response):
    if response["status"] == True:
        return True
    elif "error" in response.keys():
        print("Error: %s" % response["error"])
        return False


# Outcomming message structure:
# { op = "START", client_id, [cipher] }
# { op = "QUIT" }
# { op = "NUMBER", number }
# { op = "STOP" }
#
# Incomming message structure:
# { op = "START", status }
# { op = "QUIT" , status }
# { op = "NUMBER", status }
# { op = "STOP", status, min, max }


#
# Suporte da execução do cliente
#

def start_action(client_sock, client_id):
    #enc = input("Would you like to use encryption on the numeric data? (Y to use, any other input to reject) ").upper()
    #if enc == "Y":
    #    cipherkey = os.urandom(16)
    #    cipherkey_tosend = str (base64.b64encode (cipherkey), "utf8")
    #else:
    cipherkey_tosend = None
    cipherkey = None
    request = { "op": "START", "client_id": client_id, "cipher": cipherkey_tosend }
    response = sendrecv_dict(client_sock, request)
    validate_response(response)
    return cipherkey

# process QUIT operation
def quit_action (client_sock):
    request = {"op": "QUIT"}
    response = sendrecv_dict(client_sock, request)
    validate_response(response)

def number_action(client_sock, cipherkey):
    n = int(input("number? "))
    request = { "op": "NUMBER", "number": encrypt_intvalue(cipherkey, n)}
    response = sendrecv_dict(client_sock, request)
    validate_response(response)

def stop_action(client_sock, cipherkey):
    request = { "op": "STOP" }
    response = sendrecv_dict(client_sock, request)
    if validate_response(response):
        print("min: %d max: %d \n" % ( decrypt_intvalue(cipherkey, response["min"]), decrypt_intvalue(cipherkey, response["max"])))

def run_client (client_sock, client_id):
    while 1:
        op = input("op: ").upper()
        
        if op == "START":
            cipherkey = start_action(client_sock, client_id)
        
        elif op == "QUIT":
            quit_action(client_sock)
        
        elif op == "NUMBER":
            number_action(client_sock, cipherkey)
        
        elif op == "STOP":
            stop_action(client_sock, cipherkey)

        else:
            continue

def validDNS(hostname): # code used based on https://itecnote.com/tecnote/python-validate-a-hostname-string/
    if len(hostname) > 255:
        return False

    if hostname[-1] == ".":
        hostname = hostname[:-1] # strip exactly one dot from the right, if present
    
    regex="(?!-)[A-Z0-9-]{1,63}(?<!-)$"
    allowed = re.compile(regex, re.IGNORECASE)  # characters allowed in each section between "."
    
    if len(hostname.split(".")[len(hostname.split("."))-1]) < 2: # TLD (Top Level Domain must have at least 2 characters)
        return False
    
    return all(allowed.match(x) for x in hostname.split("."))

def validIPv4(ip):
    parts = ip.split(".")

    if len(parts) != 4:
        print("IP address {} is not valid".format(ip))
        return False
    
    if len(parts[3])<1:     #solving case x.x.x. in the for loop
        print("IP address {} is not valid".format(ip))
        return False

    for part in parts:
        if not isinstance(int(part), int):
            print("IP address {} is not valid".format(ip))
            return False

        if int(part) < 0 or int(part) > 255:
            print("IP address {} is not valid".format(ip))
            return False
 
    return True

def validArguments():
    if len(sys.argv)<3 or len(sys.argv)>4:
        print("python3 %s client_id port [machine]" % (sys.argv[0]))
        return False

    elif len(sys.argv)==3:
        if int(sys.argv[2])<0:
            print("python3 %s client_id port [machine]\n%s^\nport argument must be a positive number" % (sys.argv[0], 28*" "))
            return False

    elif len(sys.argv)==4:
        if int(sys.argv[2])<0:
            print("python3 %s client_id port [machine]\n%s^\nport argument must be a positive number" % (sys.argv[0], 28*" "))
            return False
        elif not validIPv4(sys.argv[3]) or not validDNS:
            print("python3 %s client_id port [machine]\n%s^\n[machine] argument must be an IPv4 format of X.X.X.X, where X --> [0 to 255] or a valid DNS name" % (sys.argv[0], 33*" "))
            return False

    return True

def main():
    port = int(sys.argv[2])
    if len(sys.argv) == 4:
        hostname=sys.argv[3]
    else:
        hostname = "127.0.0.1"

    client_sock = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
    client_sock.connect ((hostname, port))

    run_client (client_sock, sys.argv[1])

    client_sock.close ()
    sys.exit (0)

if __name__ == "__main__":
    if validArguments():
        main()
