library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity WashMachineFSM is
	port(	clk: 				in	std_logic;
			reset:			in	std_logic;
			P_in:				in std_logic_vector(1 downto 0);
			start_stop:		in std_logic;
			time_exp:		in std_logic;
			new_time:			out std_logic;
			time_value:			out std_logic_vector(2 downto 0);
			time_enable:		out std_logic;
			display_out:		out std_logic_vector(13 downto 0);
			program_enabled:	out std_logic;
			water_valve:		out std_logic;
			rinse:				out std_logic;
			water_pump:			out std_logic;
			spin:					out std_logic);
end WashMachineFSM;

architecture Behavioral of WashMachineFSM is
	type TState is (p, p1, p2, p3, p1_ma, p1_e, p1_ra, met_agua,enx ,rem_agua , spin);
	signal s_currentState, s_nextState : TState;

begin
	sync_proc : process(clk, reset)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= p;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;

	comb_proc : process(s_currentState, p_in)
	begin
		case (s_currentState) is
		
		when  p =>
			display_out <= "";
			if (p_in = x"1") then
				s_nextState <= p1;
			elsif (p_in = x"2") then
				s_nextState <= p2;
			elsif (p_in = x"3") then
				s_nextState <= p3;
			else
				s_nextState <= p;
			end if;
			
		when p1 =>
		
		
		when p2 =>
		
		
		when p3 =>
		
		
		end case;
	end process;

end Behavioral;