library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM is
	port(	reset:	in	std_logic;
			clk: 		in	std_logic;
			Xin:		in std_logic;
			Yout:		out std_logic);
end SeqDetFSM;

architecture Behavioral of SeqDetFSM is
	type TState is (S0, S1, S2, S3);
	signal s_currentState, s_nextState : TState;

begin
	sync_proc : process(clk, reset)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= S0;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;

	comb_proc : process(s_currentState, Xin)
	begin
		case (s_currentState) is
		when  S0 =>
			Yout <= '0';
			if (Xin = '1') then
				s_nextState <= S1;
			else
				s_nextState <= S0;
			end if;
			
		when	S1 =>
			Yout <= '0';
			if (Xin = '1') then
				s_nextState <= S1;
			else
				s_nextState <=S2;
			end if;
		
		when S2 =>
			Yout <= '0';
			if (Xin = '1') then
				s_nextState <= S1;
			else
				s_nextState <=S3;
			end if;
		
		when S3 =>
			if (Xin = '1') then
				Yout <= '1';
				s_nextState <= S1;
			else
				Yout <= '0';
				s_nextState <=S0;
			end if;
			
		end case;
	end process;
end Behavioral;