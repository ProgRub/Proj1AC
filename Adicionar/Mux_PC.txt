library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_PC is
    Port ( S_FLAG : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_PC : in  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_PC : out  STD_LOGIC);
end Mux_PC;

architecture Behavioral of Mux_PC is

begin
	process (S_FLAG, Operando1,SEL_PC)
		begin
			case SEL_PC is
				when "000" => ESCR_PC <= '0';
				when "001" => ESCR_PC <= '1';
				when "010" => ESCR_PC <= S_FLAG;
				when "011" => ESCR_PC <= Operando1(7);
				when "100" => ESCR_PC <= not(Operando1(7) or Operando1(6)or Operando1(5)or Operando1(4)or Operando1(3)or Operando1(2)or Operando1(1)or Operando1(0)) ;
				when others => ESCR_PC <= 'X';
			end case;
	end process;
	
end Behavioral;

