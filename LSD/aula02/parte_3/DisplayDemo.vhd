library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DisplayDemo is
	port(binInput : in std_logic_vector(3 downto 0);
	decOut_n : out std_logic_vector(6 downto 0);
	En : in std_logic);
end DisplayDemo;

architecture Shell of DisplayDemo is
	begin
	system_core : entity work.Bin7SegDecoder(Behavioral)
						port map()