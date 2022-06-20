library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity reg_1 is
	port( signal clk, reset, st, lid :		in std_logic;
			signal p :	in std_logic_vector(1 downto 0);
			signal reset_out, st_out, lid_out :		out std_logic;
			signal p_out :	out std_logic_vector(1 downto 0));
end reg_1;
architecture Behavioral of reg_1 is
begin
	process(clk) is
	begin
		if rising_edge(clk) then
			if (reset = '1') then
				reset_out <= '1';
				st_out <= '0';
				p_out <= "00";
				lid_out <= '0';
			else
				reset_out <= reset;
				st_out <= st;
				p_out <= p;
				lid_out <= lid;
			end if;
		end if;
	end process;
end Behavioral;