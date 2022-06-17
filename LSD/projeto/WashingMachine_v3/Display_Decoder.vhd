library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DisplayDecoder is
port(	fsm_mode : 	in std_logic_vector(1 downto 0);
		real_time :	in std_logic_vector(7 downto 0);
		p_out : 		out std_logic_vector(6 downto 0);
		mode_out :	out std_logic_vector(6 downto 0);
		time0 : 		out std_logic_vector(6 downto 0);
		time1 : 		out std_logic_vector(6 downto 0));
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
		"1111001" when (real_time(7 downto 4) = "0001") else --1
		"0100100" when (real_time(7 downto 4) = "0010") else --2
		"0110000" when (real_time(7 downto 4) = "0011") else --3
		"0011001" when (real_time(7 downto 4) = "0100") else --4
		"0010010" when (real_time(7 downto 4) = "0101") else --5
		"0000010" when (real_time(7 downto 4) = "0110") else --6
		"1111000" when (real_time(7 downto 4) = "0111") else --7
		"0000000" when (real_time(7 downto 4) = "1000") else --8
		"0010000" when (real_time(7 downto 4) = "1001") else --9
		"1000000"; --0
	
	time1 <= 
		"1111001" when (real_time(3 downto 0) = "0001") else --1
		"0100100" when (real_time(3 downto 0) = "0010") else --2
		"0110000" when (real_time(3 downto 0) = "0011") else --3
		"0011001" when (real_time(3 downto 0) = "0100") else --4
		"0010010" when (real_time(3 downto 0) = "0101") else --5
		"0000010" when (real_time(3 downto 0) = "0110") else --6
		"1111000" when (real_time(3 downto 0) = "0111") else --7
		"0000000" when (real_time(3 downto 0) = "1000") else --8
		"0010000" when (real_time(3 downto 0) = "1001") else --9
		"1000000"; --0
		
end Behavioral;