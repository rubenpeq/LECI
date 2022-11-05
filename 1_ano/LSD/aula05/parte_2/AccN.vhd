library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AccN is
	generic(N : positive := 8);
	port(reset : in std_logic;
	enable : in std_logic;
	clk : in std_logic;
	dataIn : in std_logic_vector((N-1) downto 0);
	dataOut : out std_logic_vector((N-1) downto 0));
end AccN;

architecture Shell of AccN is

signal s_AdderOut, s_RegOut : std_logic_vector((N-1) downto 0);

begin

Registo: entity work.RegN(Behavioral)
	generic map (N => N)
	port map (clk => clk,
				 reset => reset,
				 enable => enable,
				 dataIn => s_AdderOut,
				 dataOut => s_RegOut);

Adder: entity work.AdderN(Behav)
	generic map (N => N)
	port map (operand0 => dataIn,
				 operand1 => s_RegOut, 
				 result => s_AdderOut);
				 
end Shell;