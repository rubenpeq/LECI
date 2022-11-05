library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetector is
	port( CLOCK_50: in std_logic;
			SW:	in	std_logic_vector(1 downto 0);
			LEDR:	out std_logic_vector(0 downto 0);
			LEDG: out std_logic_vector(0 downto 0));
end SeqDetector;

architecture Shell of SeqDetector is
signal s_clock : std_logic;

begin 
	top_level: entity work.SeqDetFSM(Behavioral)
		port map(clk => s_clock,
					reset => SW(1),
					Xin => SW(0),
					Yout => LEDR(0));
	
	divisor: entity work.ClkDividerN(Behavioral)
		generic map(divFactor =>250000000)
		port map(clkIn => CLOCK_50,
					clkOut => s_clock);
					
	LEDG(0) <= s_clock;

end Shell;