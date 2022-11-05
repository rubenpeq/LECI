library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin2BCD is
	port( binInput : in std_logic_vector (3 downto 0);
			outBCD : out std_logic_vector (4 downto 0);
			
	);
end Bin2BCD;