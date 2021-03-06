library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegistosAeB is
    Port ( ESCR_R : in  STD_LOGIC;
           Dados_R : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Operando1 : out  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : out  STD_LOGIC_VECTOR (7 downto 0));
end RegistosAeB;

architecture Behavioral of RegistosAeB is
begin
	process(ESCR_R, Dados_R, SEL_R,clk)
		begin
			if rising_edge(clk) then
				if (ESCR_R = '1') then
					if (SEL_R = '0') then
						Operando1 <= Dados_R;
					else
						Operando2 <= Dados_R;
					end if;
				end if;
			end if;
	end process;						
end Behavioral;