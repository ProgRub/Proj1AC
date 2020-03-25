library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Periferico_Entrada is
    Port ( ESCR_P : in  STD_LOGIC;
           PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_In : out  STD_LOGIC_VECTOR (7 downto 0));
end Periferico_Entrada;

architecture Behavioral of Periferico_Entrada is
begin
	process (ESCR_P, PIN)
		begin
			if (ESCR_P = '0') then
				Dados_In <= PIN;
			end if;			
	end process;	
end Behavioral;