library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mini_proj is
	port(	CLOCK_50: in std_logic;
			KEY: in std_logic_vector(1 downto 0);
			HEX0: out std_logic_vector(6 downto 0));
end mini_proj;

architecture Structural of mini_proj is
	signal s_clock : std_logic;
	signal s_count: std_logic_vector(3 downto 0);
	
begin
	top_level: entity work.Counter0_9(Behavioral)
		port map(clk => s_clock,
			reset => NOT KEY(0),
			blink => NOT KEY(1),
			counter => s_count);
		
	Bin7Seg: entity work.Bin7Seg(Behavioral)
		port map(binInput => s_count,
					decOut => HEX0(6 downto 0),
					En => '1');
	
	pulse_generator: entity work.PulseGenerator(Behavioral)
		generic map(divFactor => 50000000)
		port map(clkIn => CLOCK_50,
					clkOut => s_clock);

end Structural;