library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RAM is
    Port ( Operando1, Address : in  STD_LOGIC_VECTOR (7 downto 0);
           WR, Clock : in  STD_LOGIC;
           Dados_M : out  STD_LOGIC_VECTOR (7 downto 0));
end RAM;

architecture Behavioral of RAM is
Type mem is array(255 downto 0) of STD_LOGIC_VECTOR(7 Downto 0);
Signal Memoria : mem := (others=>(others=>'0'));
begin
process(Clock)
begin
if rising_edge(Clock) then
	if WR = '1' then
		Memoria(to_integer(Unsigned(Address)))<=Operando1;
	end if;
end if;
end process;
Dados_M<=Memoria(to_integer(Unsigned(Address)));
end Behavioral;