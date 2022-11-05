library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity WashMachineFSM is
	port(	clk: 				in	std_logic;
			reset:			in	std_logic;
			P_in:				in std_logic_vector(1 downto 0);
			start_stop:		in std_logic;
			time_exp:		in std_logic;
			lid:				in std_logic;	-- '0' porta fechada
			new_time:			out std_logic;
			time_value:			out std_logic_vector(3 downto 0);
			time_enable:		out std_logic;
			display_out:		out std_logic_vector(1 downto 0);
			program_led:		out std_logic;
			water_valve:		out std_logic;
			rinse:				out std_logic;
			water_pump:			out std_logic;
			spin:					out std_logic);
end WashMachineFSM;

architecture Behavioral of WashMachineFSM is
	constant SOAK_TIME : std_logic_vector(3 downto 0) := "0101"; -- 5 s
	constant RINSE_TIME : std_logic_vector(3 downto 0) := "1001"; -- 9 s
	constant REMOVE_WATER_TIME : std_logic_vector(3 downto 0) := "0010"; -- 2 s
	constant SPIN_TIME : std_logic_vector(3 downto 0) := "0100"; -- 4 s
	type TState is (Tidle, Tsoak, Trinse, Trm_water, Tspin, Tfinished);
	
	signal s_currentState, s_nextState : TState;
	signal s_stateChanged, s_timeEnable : std_logic := '1';
	signal s_mode : std_logic_vector(1 downto 0);
	signal s_nextStateAUX : unsigned(1 downto 0) := (others => '0');

begin
	sync_proc : process(clk, reset)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
			s_currentState <= Tidle;
			s_stateChanged <= '1';
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


	comb_proc : process(s_currentState, p_in, lid, time_exp, start_stop)
	begin
		case (s_currentState) is
		
		when  Tidle =>
			s_nextStateAUX <= "00";
			s_timeEnable <= '0';		
			program_led <= '0';
			water_valve <= '0';
			rinse <= '0';
			water_pump <= '0';
			spin <= '0';
			s_mode <= p_in;
			if (s_mode = "01") then
				time_value <= "1101"; -- 38s+2s >> display decoder
				if ((lid = '0') and (start_stop = '1')) then
					s_timeEnable <= '1';
					s_nextState <= Tsoak;
				end if;
			elsif (s_mode = "10") then
				time_value <= "1110"; -- 22s+2s >> display decoder
				if ((lid = '0') and (start_stop = '1')) then
					s_timeEnable <= '1';
					s_nextState <= Tsoak;
				end if;
			elsif (s_mode = "11") then
				time_value <= "1111"; -- 38s+2s >> display decoder
				if ((lid = '0') and (start_stop = '1')) then
					s_timeEnable <= '1';
					s_nextState <= Tspin;
				end if;
			else
				time_value <= "0000";
				s_nextState <= Tidle;
			end if;
		
		when Tsoak =>
			time_value <= SOAK_TIME;
			program_led <= '1';
			water_valve <= '1';
			rinse <= '0';
			water_pump <= '0';
			spin <= '0';
			if (start_stop = '1') then
				s_timeEnable <= not s_timeEnable;
			end if;
			if (time_exp = '1') then
				s_nextState <= Trinse;
			else
				s_nextState <= Tsoak;
			end if;
			
		when Trinse =>
			time_value <= RINSE_TIME;
			program_led <= '1';
			water_valve <= '0';
			rinse <= '1';
			water_pump <= '0';
			spin <= '0';
			if (start_stop = '1') then
				s_timeEnable <= not s_timeEnable;
			end if;
			if (time_exp = '1') then
				s_nextState <= Trm_water;
			else
				s_nextState <= Trinse;
			end if;
			
		when Tspin =>
			time_value <= SPIN_TIME;
			program_led <= '1';
			water_valve <= '0';
			rinse <= '0';
			water_pump <= '0';
			spin <= '1';
			if (start_stop = '1') then
				s_timeEnable <= not s_timeEnable;
			end if;
			if (time_exp = '1') then
				s_nextState <= Trm_water;
			else
				s_nextState <= Tspin;
			end if;
			
		when Trm_water =>
			time_value <= REMOVE_WATER_TIME;
			program_led <= '1';
			water_valve <= '0';
			rinse <= '0';
			water_pump <= '1';
			spin <= '0';
			if (start_stop = '1') then
				s_timeEnable <= not s_timeEnable;
			end if;
			if (time_exp = '1') then
				if (s_mode = "01") then
					if (s_nextStateAUX = "10") then
						s_nextState <= Tfinished;
					elsif (s_nextStateAUX = "01") then
						s_nextStateAUX <= s_nextStateAUX + 1;
						s_nextState <= Tspin;
					else
						s_nextStateAUX <= s_nextStateAUX + 1;
						s_nextState <= Tsoak;
					end if;
				elsif (s_mode = "10") then
					if (s_nextStateAUX = "01") then
						s_nextState <= Tfinished;
					else
						s_nextStateAUX <= s_nextStateAUX + 1;
						s_nextState <= Tspin;
					end if;
				else
					s_nextState <= Tfinished;
				end if;
			end if;
			
		when Tfinished => -- esperar 2s e apagar led
			time_value <= REMOVE_WATER_TIME;
			program_led <= '1';
			water_valve <= '0';
			rinse <= '0';
			water_pump <= '0';
			spin <= '0';
			if (start_stop = '1') then
				s_timeEnable <= not s_timeEnable;
			end if;
			if (time_exp = '1') then
				s_nextState <= Tidle;
			else
				s_nextState <= Tfinished;
			end if;
		
		end case;
	end process;
	time_enable <= s_timeEnable;
	display_out <= s_mode;

end Behavioral;