library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AdderN is
	generic( N : positive := 4);
   port ( operand0 : in  STD_LOGIC_VECTOR ((N-1) downto 0);
           operand1 : in  STD_LOGIC_VECTOR ((N-1) downto 0);
           result : out  STD_LOGIC_VECTOR ((N-1) downto 0));
end AdderN;

architecture Behav of AdderN is
begin
    result <= operand0 + operand1;
end Behav;