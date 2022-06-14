library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity WashMachineFSM is
	port(	clk: 				in	std_logic;
			reset:			in	std_logic;
			P_in:				in std_logic_vector(1 downto 0);
			start_stop:		in std_logic;
			time_exp:		in std_logic;
			door:				in std_logic;	-- '0' porta fechada
			new_time:			out std_logic;
			time_value:			out std_logic_vector(2 downto 0);
			time_enable:		out std_logic;
			display_out:		out std_logic_vector(13 downto 0);
			program_led:		out std_logic;
			water_valve:		out std_logic;
			rinse:				out std_logic;
			water_pump:			out std_logic;
			spin:					out std_logic);
end WashMachineFSM;

architecture Behavioral of WashMachineFSM is
	constant METER_AGUA_TIME : std_logic_vector(7 downto 0) := ""; -- 5 s
	constant ENXAGUAR_TIME : std_logic_vector(7 downto 0) := ""; -- 9 s
	constant TIRAR_AGUA_TIME : std_logic_vector(7 downto 0) := ""; -- 2 s
	constant SPIN_TIME : std_logic_vector(7 downto 0) := ""; -- 4 s
	type TState is (Tinit, Tp1, Tp2, Tp3, Tp1_ma, Tp1_e, Tp1_ra, Tmet_agua, Tenx, Trem_agua, Tspin, Tend);
	
	signal s_currentState, s_nextState : TState;
	signal s_stateChanged : std_logic := '1';


begin
	sync_proc : process(clk, reset)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= Tinit;
			else
				if (s_currentState /= s_nextState) then
				s_stateChanged <= '1';
				else
				s_stateChanged <= '0';
				end if;
			s_currentState <= s_nextState;
			end if;
		end if;
	end process;
	new_time <= s_stateChanged;


	comb_proc : process(s_currentState, p_in)
	begin
		case (s_currentState) is
		
		when  Tinit =>
			display_out <= "";
			if (p_in = "01") then
				s_nextState <= Tp1;
			elsif (p_in = "10") then
				s_nextState <= Tp2;
			elsif (p_in = "11") then
				s_nextState <= Tp3;
			else
				s_nextState <= Tinit;
			end if;
			
		when Tp1 => -- display p1
			time_value <= x"0";
			time_enable <= '0';
			display_out <= "";
			program_led <= '0';
			water_valve <= '0';
			rinse <= '0';
			water_pump <= '0';
			spin <= '0';
			if (p_in = "01") then
				if ((start_stop = '1') and (door = '0')) then
					s_nextState <= Tp1_ma;
				end if;
			else
				s_nextState <= Tinit;
			end if;
		
		when Tp2 => -- display p2
			time_value <= x"0";
			time_enable <= '0';
			display_out <= "";
			program_led <= '0';
			water_valve <= '0';
			rinse <= '0';
			water_pump <= '0';
			spin <= '0';
			if (p_in = "10") then
				if ((start_stop = '1') and (door = '0')) then
					s_nextState <= Tp1_ma;
				end if;
			else
				s_nextState <= Tinit;
			end if;
		
		when Tp3 => -- diplay p3
			time_value <= x"0";
			time_enable <= '0';
			display_out <= "";
			program_led <= '0';
			water_valve <= '0';
			rinse <= '0';
			water_pump <= '0';
			spin <= '0';
			if (p_in = "11") then
				if ((start_stop = '1') and (door = '0')) then
					s_nextState <= Tspin;
				end if;
			else
				s_nextState <= Tinit;
			end if;
			
		when Tspin =>
			time_value <= x"0";
			time_enable <= '0';	
			display_out <= "";
			program_led <= '0';
			water_valve <= '0';
			rinse <= '0';
			water_pump <= '0';
			spin <= '1';
			
		when Tend => -- esperar 2s e apagar led
			program_led <= '1';
			time_value <= TIRAR_AGUA_TIME;
			if (time_exp = '1') then
				s_nextState <= Tinit;
			else
				s_nextState <= Tend;
			end if;
		
		end case;
	end process;

end Behavioral;