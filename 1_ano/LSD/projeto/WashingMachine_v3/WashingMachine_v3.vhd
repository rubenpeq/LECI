library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity WashingMachine_v3 is
	port(	CLOCK_50 :	in std_logic;
			SW :			in std_logic_vector(3 downto 0);
			KEY :			in std_logic_vector(0 downto 0);
			LEDR:			out std_logic_vector(0 downto 0);
			LEDG :		out std_logic_vector(3 downto 0);
			HEX0 :		out std_logic_vector(6 downto 0);
			HEX1 :		out std_logic_vector(6 downto 0);
			HEX2 :		out std_logic_vector(6 downto 0);
			HEX3 :		out std_logic_vector(6 downto 0);
			HEX4 :		out std_logic_vector(6 downto 0));
end WashingMachine_v3;

architecture Shell of WashingMachine_v3 is
	signal s_clock, s_newTime, s_timeExp, s_timeEnable, s_st, s_rst, s_lid : std_logic;
	signal s_timeValue, s_realTime : std_logic_vector(3 downto 0);
	signal s_programMode, s_p : std_logic_vector(1 downto 0);

begin
	top_level: entity work.WashMachineFSM(Behavioral)
		port map(clk => s_clock,
					reset => s_rst,
					P_in => s_p,
					start_stop => s_st,
					time_exp => s_timeExp,
					lid => s_lid,
					new_time => s_newTime,		
					time_value 	=>	s_timeValue,	
					time_enable =>	s_timeEnable,	
					display_out =>	s_programMode,	
					program_led =>	LEDR(0),	
					water_valve =>	LEDG(0),	
					rinse =>	LEDG(1),			
					water_pump => LEDG(3),	
					spin => LEDG(2));
					
	display_decoder: entity work.DisplayDecoder(Behavioral)
		port map(fsm_mode => s_ProgramMode,
					real_time => s_realTime,
					stop => s_timeEnable,
					p_out => HEX1,
					mode_out => HEX0,
					time0 => HEX2,
					time1 =>	HEX3,
					stopped => HEX4);
		
	timer_aux: entity work.TimerAuxFSM(Behavioral)
		port map(reset => SW(3) ,
				clk => not s_clock,
				timeEn => s_timeEnable,
				newTime => s_newTime,
				timeVal => s_timeValue,
				currentTime => s_realTime,
				timeExp => s_timeExp);

	divisor: entity work.ClkDividerN(Behavioral)
		generic map(divFactor =>50000000)
		port map(clkIn => CLOCK_50,
					clkOut => s_clock);
					
	reg: entity work.reg_1(Behavioral)
		port map(clk => s_clock,
					reset => SW(3),
					st => not KEY(0),
					lid => SW(2),
					p => SW(1 downto 0),
					reset_out => s_rst,
					st_out => s_st,
					lid_out => s_lid,
					p_out => s_p);
				
end Shell;