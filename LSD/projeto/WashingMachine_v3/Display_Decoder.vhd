library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DisplayDecoder is
port(	input : 	in std_logic_vector(3 downto 0);
		output : 	out std_logic_vector(6 downto 0));
end DisplayDecoder;

architecture Behavioral of DisplayDecoder is
begin
	output <= 
		"1110011" when (input = "0001") else --p
		"1110011" when (input = "0010") else --p1
		"1000000"; --0
end Behavioral;