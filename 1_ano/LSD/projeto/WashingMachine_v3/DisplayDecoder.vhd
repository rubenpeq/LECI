library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DisplayDecoder is
port(	fsm_mode : 	in std_logic_vector(1 downto 0);
		real_time :	in std_logic_vector(3 downto 0);
		stop : 		in std_logic;
		p_out : 		out std_logic_vector(6 downto 0);
		mode_out :	out std_logic_vector(6 downto 0);
		time0 : 		out std_logic_vector(6 downto 0);
		time1 : 		out std_logic_vector(6 downto 0);
		stopped:		out std_logic_vector(6 downto 0));
end DisplayDecoder;

architecture Behavioral of DisplayDecoder is
begin
	p_out <= "0001100"; -- p
	
	mode_out <= 
		"1111001" when (fsm_mode = "01") else --1
		"0100100" when (fsm_mode = "10") else --2
		"0110000" when (fsm_mode = "11") else --3
		"1110111";
		
	time0 <= 
		"1111001" when (real_time = "0001") else --1
		"0100100" when (real_time = "0010") else --2
		"0110000" when (real_time = "0011") else --3
		"0011001" when (real_time = "0100") else --4
		"0010010" when (real_time = "0101") else --5
		"0000010" when (real_time = "0110") else --6
		"1111000" when (real_time = "0111") else --7
		"0000000" when (real_time = "1000") else --8
		"0010000" when (real_time = "1001") else --9
		"1000000" when (real_time = "1101") else -- mode 1
		"0011001" when (real_time = "1110") else -- mode 2
		"0000000" when (real_time = "1111") else -- mode 3
		"1000000"; --0
	
	time1 <= 
		"0011001" when (real_time = "1101") else -- mode 1
		"0100100" when (real_time = "1110") else -- mode 2
		"1000000"; --0
		
	stopped <=
		"0110111" when (stop = '0') else
		"1111111";
		
end Behavioral;