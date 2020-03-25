library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_Registos is
    Port ( Resultado : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_Data : in  STD_LOGIC_VECTOR (1 downto 0);
           Dados_Reg : out  STD_LOGIC_VECTOR (7 downto 0));
end Mux_Registos;

architecture Behavioral of Mux_Registos is
signal temp :  STD_LOGIC_VECTOR (7 downto 0);
begin
process (SEL_Data, Resultado, Dados_IN, Dados_M, Constante)
begin
	case SEL_Data is
	when "00" => temp <= Resultado;
	when "01" => temp <= Dados_IN;
	when "10" => temp <= Dados_M;
	when "11" => temp <= Constante;
	when others => temp <= (others => 'X');	
	end case;
end process;
Dados_Reg <= temp;
end Behavioral;