library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Periferico_Saida is
    Port ( Escr_P : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           POut : out  STD_LOGIC_VECTOR (7 downto 0));
end Periferico_Saida;

architecture Behavioral of Periferico_Saida is
signal temp : STD_LOGIC_VECTOR (7 downto 0);
begin
process (CLK)
begin 
	if rising_edge (CLK) then
		if (Escr_P = '1') then
			temp <= Operando1;
		end if;
	
	end if;
end process;
POut <= temp;



end Behavioral;

