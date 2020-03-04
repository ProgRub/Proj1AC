----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:20:11 03/03/2020 
-- Design Name: 
-- Module Name:    Ex_3 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM is
    Port ( DadosIn, Address : in  STD_LOGIC_VECTOR (7 downto 0);
           WR, Clock : in  STD_LOGIC;
           DadosOut : out  STD_LOGIC_VECTOR (7 downto 0));
end RAM;

architecture Behavioral of RAM is
Type mem is array(256 downto 0) of STD_LOGIC_VECTOR(7 Downto 0);
Signal Memoria : mem := (others=>(others=>'0'));

begin
process(Clock)
begin
if rising_edge(Clock) then
	if WR = '1' then
		Memoria(to_integer(Unsigned(Address)))<=DadosIn;
	end if;
end if;
end process;
	DadosOut<=Memoria(to_integer(Unsigned(Address)));

end Behavioral;

