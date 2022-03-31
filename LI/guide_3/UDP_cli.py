from audioop import add
import socket
import sys

def main():
    udp_s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    udp_s.bind( ("127.0.0.1", 2325) )
    while 1:
        m=input("Message? ")
        udp_s.sendto( m.encode(), ("127.0.0.1",2222) )
        b_data, addr = udp_s.recvfrom(4096)
        print(b_data.decode())
    udp_s.close()

if __name__=="__main__":
    main()