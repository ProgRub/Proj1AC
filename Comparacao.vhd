library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparacao is
    Port ( Comp_Res : in  STD_LOGIC_VECTOR (4 downto 0);
           Comp_Flag : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Sel_Comp : in  STD_LOGIC_VECTOR (2 downto 0);
           S_Flag : out  STD_LOGIC);
end Comparacao;

architecture Behavioral of Comparacao is
begin
process (Clk, Sel_Comp, Comp_Flag, Comp_Res)
variable mem : STD_LOGIC_VECTOR (4 downto 0);
begin
case Sel_Comp is
	when "000" => S_Flag <= mem(0);
	when "001" => S_Flag <= mem(1);
	when "010" => S_Flag <= mem(2);
	when "011" => S_Flag <= mem(3);
	when "100" => S_Flag <= mem(4);
	when others => S_Flag <= 'X';
end case;
if rising_edge (Clk)  then
		if Comp_Flag = '1' then
			mem := Comp_Res;
		end if;
end if;
end process;
end Behavioral;