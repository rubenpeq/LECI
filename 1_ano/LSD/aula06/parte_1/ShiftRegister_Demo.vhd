library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegister_Demo is
	port (SW: in std_logic_vector (0 downto 0);
	CLOCK_50: in std_logic;
	LEDR: out std_logic_vector(7 downto 0));
end ShiftRegister_Demo;

architecture Shell of ShiftRegister_Demo is
	signal s_clock : std_logic;
begin
	top_level: entity work.ShiftRegisterN(Behav)
	generic map(size =>8)
	port map(   clk => s_clock,
					sIn => SW(0),
					dataOut => LEDR(7 downto 0));
	divisor: entity work.ClkDividerN(Behavioral)
		generic map(divFactor =>50000000)
		port map(clkIn => CLOCK_50,
					clkOut => s_clock);
end Shell;
