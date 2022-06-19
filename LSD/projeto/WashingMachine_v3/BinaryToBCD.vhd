library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity binaryToBCD is
	port(	binary_input :	in std_logic_vector(5 downto 0);
			BCD_out : 		out std_logic_vector(7 downto 0));
end binaryToBCD;

architecture Behavioral of binaryToBCD is
begin

end Behavioral;