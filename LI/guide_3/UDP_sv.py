from audioop import add
import socket

def main():
    udp_s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    udp_s.bind( ("127.0.0.1", 1444) )
    while 1:
        print("Waiting for message! ")
        b_data, addr = udp_s.recvfrom(4096)
        print(b_data.decode())
        if (b_data.decode()=="close"):
            break
        udp_s.sendto( b_data.upper(), addr )
    udp_s.close()

if __name__=="__main__":
    main()