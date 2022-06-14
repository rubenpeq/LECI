library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Dec2_4EnDemo is
	port(SW : std_logic_vector(2 downto 0);
		LEDG : std_logic_vector(3 downto 0);
		KEY: std_logic_vector(0 downto 0);
		LEDR : std_logic_vector(6 downto 0);
		HEX0 : std_logic_vector(6 downto 0));
end Dec2_4EnDemo;

architecture Structure of Dec2_4EnDemo is
signal s_auxiliar : std_logic_vector(6 downto 0)
begin

	system_core : entity work.Dec2_4En(BehavEquations)
					  port map(En => KEY(0),);
end Shell;