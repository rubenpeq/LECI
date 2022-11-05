library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter0_9 is
	port(	clk: in std_logic;
			reset: in std_logic;
			blink: in std_logic;
			counter: out std_logic_vector(3 downto 0));
end Counter0_9;

architecture Behavioral of Counter0_9 is
	signal s_counter: std_logic_vector(3 downto 0);
	
begin
	process(clk)
	begin
		if(rising_edge(clk)) then	
			if(reset='1') then
				s_counter <= x"0";
			elsif(blink='0') then
				if(s_counter=x"9") then
					s_counter <= x"0";
				else
					s_counter <= s_counter + x"1";
				end if;
			else
				s_counter <= s_counter;
			end if;
		 end if;
	end process;
counter <= s_counter;

end Behavioral;