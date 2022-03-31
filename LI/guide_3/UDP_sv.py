from audioop import add
import socket
import sys

def main():
    udp_s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    udp_s.bind( ("127.0.0.1", 2222) )
    while 1:
        print("Waiting for message! ")
        b_data, addr = udp_s.recvfrom(4096)
        udp_s.sendto( b_data.upper(), addr )
    udp_s.close()

if __name__=="__main__":
    main()