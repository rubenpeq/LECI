library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity TrafficLights is
	port( CLOCK_50:	in std_logic;
			SW:			in std_logic_vector(0 downto 0);
			KEY:			in std_logic_vector(0 downto 0);
			LEDR:			out std_logic_vector(17 downto 0));
end TrafficLights;

architecture Shell of TrafficLights is
	signal s_clock, s_newTime, s_timeExp, s_yBlink, s_yellow1, s_yellow2: std_logic;
	signal s_timeVal: std_logic_vector(7 downto 0);

begin
	top_level: entity work.TrafficLightsFSM(Behavioral)
		port map(reset => not KEY(0),
				clk => s_clock,
				intermit => SW(0),
				newTime => s_newTime,
				timeVal => s_timeVal,
				timeExp => s_timeExp,
				yBlink => s_yBlink,
				red1 => LEDR(15),
				yellow1 => s_yellow1,
				green1 => LEDR(17),
				red2 => LEDR(2),
				yellow2 => s_yellow2,
				green2 => LEDR(0));
		LEDR(1) <= (not s_yBlink or s_clock) and s_yellow2;
		LEDR(16) <= (not s_yBlink or s_clock) and s_yellow1;
		
	timer_aux: entity work.TimerAuxFSM(Behavioral)
		port map(reset => not KEY(0) ,
				clk => not s_clock,
				newTime => s_newTime,
				timeVal => s_timeVal,
				timeExp => s_timeExp);

	divisor: entity work.ClkDividerN(Behavioral)
		generic map(divFactor =>250000000)
		port map(clkIn => CLOCK_50,
					clkOut => s_clock);
				
end Shell