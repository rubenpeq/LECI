library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity WashMachineFSM is
	port(	clk: 				in	std_logic;
			reset:			in	std_logic;
			P_in:				in std_logic_vector(1 downto 0);
			start_stop:		in std_logic;
			time_exp:		in std_logic;
			lid:				in std_logic;	-- '0' porta fechada
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
	constant SOAK_TIME : std_logic_vector(7 downto 0) := ""; -- 5 s
	constant RINSE_TIME : std_logic_vector(7 downto 0) := ""; -- 9 s
	constant REMOVE_WATER_TIME : std_logic_vector(7 downto 0) := ""; -- 2 s
	constant SPIN_TIME : std_logic_vector(7 downto 0) := ""; -- 4 s
	type TState is (Tinit, Tp1, Tp2, Tp3, Tsoak, Trinse, Trm_water, Tspin, Tfinished);
	
	signal s_currentState, s_nextState : TState;
	signal s_stateChanged : std_logic := '1';
	signal s_mode : std_logic_vector(1 downto 0);


begin
	sync_proc : process(clk, reset)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= Tinit;
			else
			s_currentState <= s_nextState;
			end if;
		end if;
	end process;


	comb_proc : process(s_currentState, p_in)
	begin
		case (s_currentState) is
		
		when  Tinit =>
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
			
		when Tfinished => -- esperar 2s e apagar led
			program_led <= '1';
			time_value <= REMOVE_WATER_TIME;
			if (time_exp = '1') then
				s_nextState <= Tinit;
			else
				s_nextState <= Tfinished;
			end if;
		
		end case;
	end process;

end Behavioral;