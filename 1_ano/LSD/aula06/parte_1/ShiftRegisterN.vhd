library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegisterN is
	generic (size : positive := 4);
	port(clk : in std_logic;
	sIn : in std_logic;
	dataOut : out std_logic_vector((size-1) downto 0));
end ShiftRegisterN;

architecture Behav of ShiftRegisterN is
	signal s_data : std_logic_vector((size-1) downto 0);
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			s_data <= s_data((size-2) downto 0) & sIn;
		end if;
	end process;
dataOut <= s_data;
end Behav;