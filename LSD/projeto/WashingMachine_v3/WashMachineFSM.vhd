library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity WashMachineFSM is
	port(	clk: 				in	std_logic;
			reset:			in	std_logic;
			P_in:				in std_logic_vector(1 downto 0);
			start_stop:		in std_logic;
			time_exp:		in std_logic;
			lid:				in std_logic;	-- '0' porta fechada
			total_new_time:	out std_logic;
			new_time:			out std_logic;
			time_value:			out std_logic_vector(7 downto 0);
			time_enable:		out std_logic;
			display_out:		out std_logic_vector(1 downto 0);
			program_led:		out std_logic;
			water_valve:		out std_logic;
			rinse:				out std_logic;
			water_pump:			out std_logic;
			spin:					out std_logic);
end WashMachineFSM;

architecture Behavioral of WashMachineFSM is
	constant SOAK_TIME : std_logic_vector(7 downto 0) := "0000101"; -- 5 s
	constant RINSE_TIME : std_logic_vector(7 downto 0) := "0001001"; -- 9 s
	constant REMOVE_WATER_TIME : std_logic_vector(7 downto 0) := "0000010"; -- 2 s
	constant SPIN_TIME : std_logic_vector(7 downto 0) := "0000100"; -- 4 s
	type TState is (Tidle, Tp1, Tp2, Tp3, Tsoak, Trinse, Trm_water, Tspin, Tfinished);
	
	signal s_currentState, s_nextState : TState;
	signal s_stateChanged : std_logic := '1';
	signal s_mode : std_logic_vector(1 downto 0);


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


	comb_proc : process(s_currentState, p_in, start_stop, lid, time_exp)
	begin
		case (s_currentState) is
		
		when  Tidle =>
			time_value <= x"0";
			time_enable <= '0';
			display_out <= "";
			program_led <= '0';
			water_valve <= '0';
			rinse <= '0';
			water_pump <= '0';
			spin <= '0';
			s_mode <= p_in;
			if (lid = '0') then
				if ((s_mode = "01") and (start_stop = '1')) then
					s_nextState <= Tp1;
				elsif ((s_mode = "10") and (start_stop = '1')) then
					s_nextState <= Tp2;
				elsif ((s_mode = "11") and (start_stop = '1')) then
					s_nextState <= Tspin;
				end if;
			else
				s_nextState <= Tidle;
			end if;
			
		when Tspin =>
			time_value <= x"0";
			time_enable <= '0';	
			display_out <= s_mode;
			program_led <= '0';
			water_valve <= '0';
			rinse <= '0';
			water_pump <= '0';
			spin <= '1';
			
		when Tfinished => -- esperar 2s e apagar led
			time_value <= REMOVE_WATER_TIME;
			time_enable <= '1';	
			display_out <= s_mode;
			program_led <= '1';
			water_valve <= '0';
			rinse <= '0';
			water_pump <= '0';
			spin <= '0';
			if (time_exp = '1') then
				s_nextState <= Tidle;
			else
				s_nextState <= Tfinished;
			end if;
		
		end case;
	end process;

end Behavioral;