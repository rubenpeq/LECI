import pytest
from client import validDNS, validIPv4

def test_DNS():
     assert validDNS("something.com") == True
     assert validDNS("something.c") == False
     assert validDNS(".com") == False
     assert validDNS("something.com.") == True
     assert validDNS("-something.com") == False
     assert validDNS("something.hosting") == True
     assert validDNS("somethingsomethingsomethingsomethingsomethingsomethingsomethingsomething.com") == False
     assert validDNS("s0meth1ng.org") == True

def test_IPv4():
     assert validIPv4("1.1.1.1") == True
     assert validIPv4("1.1.256.1") == False
     assert validIPv4("1.1.1") == False
     assert validIPv4("1.1.1.1.1") == False
     assert validIPv4("1.1.1.") == False
     assert validIPv4("255.255.255.255") == True