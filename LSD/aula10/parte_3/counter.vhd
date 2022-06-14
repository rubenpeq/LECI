library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity counter is
    Port ( rst, clk : in std_logic;
           Cout: out std_logic_vector(0 to 3));
end counter;

architecture Behavioral of counter is
	signal count : std_logic_vector(0 to 3);
begin
	process(rst,clk)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then 
				count <= x"0";
			else
				count <= count + 1;
			end if;
		end if;
	end process;
	Cout <= count;
end Behavioral;