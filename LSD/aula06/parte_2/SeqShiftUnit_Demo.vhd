library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqShiftUnit_Demo is
	port(CLOCK_50: in std_logic;
		  SW: in std_logic_vector (13 downto 0);
		  LEDR: out std_logic_vector (7 downto 0));
end SeqShiftUnit_Demo;

architecture Shell of SeqShiftUnit_Demo is
	signal s_clock : std_logic;
begin 
	top_level: entity work.SeqShiftUnit(Behavioral)
		port map(clk => s_clock,
					dataIn => SW(7 downto 0),
					siLeft => SW(9),
					siRight => SW(10),
					loadEn => SW(8),
					rotate => SW(11),
					dirLeft => SW(13),
					shArith => SW(12),
					dataOut => LEDR(7 downto 0));
	divisor: entity work.ClkDividerN(Behavioral)
		generic map(divFactor =>50000000)
		port map(clkIn => CLOCK_50,
					clkOut => s_clock);
end Shell;