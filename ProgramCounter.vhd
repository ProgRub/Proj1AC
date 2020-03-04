----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:50:10 03/03/2020 
-- Design Name: 
-- Module Name:    Ex_2 - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ProgramCounter is
    Port ( Const : in  STD_LOGIC_VECTOR (7 downto 0);
           Jump,Clock,Reset : in  STD_LOGIC;
           Adress : out  STD_LOGIC_VECTOR (7 downto 0));
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
		if (Jump ='1') then
			contagem<=Const;
		else
			contagem<=contagem+"00000001";
		end if;
	end if;
end if;
end Process;
Adress<=contagem;


end Behavioral;

