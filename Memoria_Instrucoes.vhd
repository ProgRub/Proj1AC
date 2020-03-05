library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Memoria_Instrucoes is
    Port ( Endereco : in  STD_LOGIC_VECTOR (7 downto 0);
           Opcode : out  STD_LOGIC_VECTOR (4 downto 0);
           Sel_R : out  STD_LOGIC;
           Constante : out  STD_LOGIC_VECTOR (7 downto 0));
end Memoria_Instrucoes;

architecture Behavioral of Memoria_Instrucoes is

begin
process (Endereco)
begin
case Endereco is
	when "00000000" => Opcode <= "00000"; Sel_R <= '0'; Constante <= "00000011";
	when "00000001" => Opcode <= "00000"; Sel_R <= '0'; Constante <= "00000011";
	when "00000010" => Opcode <= "00000"; Sel_R <= '0'; Constante <= "00000011";
	when "00000011" => Opcode <= "00000"; Sel_R <= '0'; Constante <= "00000011";
	when others => Opcode <= "00000"; Sel_R <= '0'; Constante <= "00000011";
end case;
end process;

end Behavioral;

