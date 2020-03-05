library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ProgramCounter is
    Port ( Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           ESCR_PC,Clock,Reset : in  STD_LOGIC;
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0));
end ProgramCounter;

architecture Behavioral of ProgramCounter is
Signal contagem :  STD_LOGIC_VECTOR (7 downto 0);
begin
process (Clock)
begin
if rising_edge(Clock) then
	if (Reset = '1') then
		contagem <= (others=>'0');
	else
		if (ESCR_PC ='1') then
			contagem<=Constante;
		else
			contagem<=contagem+"00000001";
		end if;
	end if;
end if;
end Process;
Endereco<=contagem;


end Behavioral;

