library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegister4 is
	port(clk : in std_logic;
	loadEn : in std_logic;
	dataIn : in std_logic_vector(3 downto 0);
	sIn : in std_logic;
	dataOut : out std_logic_vector(3 downto 0));
end ShiftRegister4;

architecture Behavioral of ShiftRegister4 is
	signal s_shiftReg : std_logic_vector(3 downto 0);
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (loadEn = '1') then
				s_shiftReg <= dataIn;
			else
				s_shiftReg <= s_shiftReg(2 downto 0) & sIn;
			end if;
		end if;
	end process;
dataOut <= s_shiftReg;
end Behavioral;