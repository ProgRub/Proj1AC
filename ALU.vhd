library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity ALU is
    Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : in  STD_LOGIC_VECTOR (7 downto 0);
           Sel_ALU : in  STD_LOGIC_VECTOR (2 downto 0);
           Resultado : out  STD_LOGIC_VECTOR (7 downto 0);
           Comp_Res : out  STD_LOGIC_VECTOR (4 downto 0));
end ALU;

architecture Behavioral of ALU is
begin
	process(Operando1,Operando2,Sel_ALU)
		begin
			case Sel_ALU is
				when "000" => Resultado <= Operando1 + Operando2;
				when "001" => Resultado <= Operando1 - Operando2;
				when "010" => Resultado <= Operando1 and Operando2;
				when "011" => Resultado <= Operando1 or Operando2;
				when "100" => Resultado <= Operando1 xor Operando2;
				when "101" =>
								if (Operando1 > Operando2)
									then
										Comp_Res <= (0 => '1', 1=> '1', others => '0');
								end if;
								
								if (Operando1 = Operando2)
									then
										Comp_Res <= (1=> '1',2 => '1',3 => '1', others => '0');
								end if;
								
								if (Operando1 < Operando2)
									then
										Comp_Res <= (4 => '1',3 => '1', others => '0');
								end if;
				when others => Comp_Res <= (others => 'X'); Resultado <= (others => 'X');
			end case;
	end process;
end Behavioral;