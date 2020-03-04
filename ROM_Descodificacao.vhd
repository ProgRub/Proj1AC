----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:35 03/04/2020 
-- Design Name: 
-- Module Name:    ROM_Descodificacao - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM_Descodificacao is
    Port ( Opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           Sel_ALU : out  STD_LOGIC_VECTOR (2 downto 0);
           Escr_Perif_Saida : out  STD_LOGIC;
           Sel_Data : out  STD_LOGIC_VECTOR (1 downto 0);
           Escr_Registo : out  STD_LOGIC;
           WR : out  STD_LOGIC;
           Sel_PC : out  STD_LOGIC_VECTOR (2 downto 0);
           Comp_Flag : out  STD_LOGIC;
           Sel_Comp : out  STD_LOGIC_VECTOR (2 downto 0));
end ROM_Descodificacao;

architecture Behavioral of ROM_Descodificacao is

begin

process (Opcode)

begin

case Opcode is
	-- LDP Ri
	when "00000" => Sel_ALU <= "XXX"; Escr_Perif_Saida <= '0'; Sel_Data <= "01"; 
	Escr_Registo <= '1'; WR <= '0'; Sel_PC <= "000"; Comp_Flag <='0'; Sel_Comp <= "XXX";
	-- STP RA
	when "00001" => Sel_ALU <= "XXX"; Escr_Perif_Saida <= '1'; Sel_Data <= "XX"; 
	Escr_Registo <= '0'; WR <= '0'; Sel_PC <= "000"; Comp_Flag <='0'; Sel_Comp <= "XXX";
	-- LD Ri, constante
	when "00010" => Sel_ALU <= "XXX"; Escr_Perif_Saida <= '0'; Sel_Data <= "11"; 
	Escr_Registo <= '1'; WR <= '0'; Sel_PC <= "000"; Comp_Flag <='0'; Sel_Comp <= "XXX";
	-- LD Ri, [constante]
	when "00011" => Sel_ALU <= "XXX"; Escr_Perif_Saida <= '0'; Sel_Data <= "10"; 
	Escr_Registo <= '1'; WR <= '0'; Sel_PC <= "000"; Comp_Flag <='0'; Sel_Comp <= "XXX";
	-- ST [constante], RA
	when "00100" => Sel_ALU <= "XXX"; Escr_Perif_Saida <= '0'; Sel_Data <= "XX"; 
	Escr_Registo <= '0'; WR <= '1'; Sel_PC <= "000"; Comp_Flag <='0'; Sel_Comp <= "XXX";
	-- ADD RA,RB
	when "00101" => Sel_ALU <= "000"; Escr_Perif_Saida <= '0'; Sel_Data <= "00"; 
	Escr_Registo <= '1'; WR <= '0'; Sel_PC <= "000"; Comp_Flag <='0'; Sel_Comp <= "XXX";
	-- SUB RA,RB
	when "00110" => Sel_ALU <= "001"; Escr_Perif_Saida <= '0'; Sel_Data <= "00"; 
	Escr_Registo <= '1'; WR <= '0'; Sel_PC <= "000"; Comp_Flag <='0'; Sel_Comp <= "XXX";
	-- AND RA,RB
	when "00111" => Sel_ALU <= "010"; Escr_Perif_Saida <= '0'; Sel_Data <= "00"; 
	Escr_Registo <= '1'; WR <= '0'; Sel_PC <= "000"; Comp_Flag <='0'; Sel_Comp <= "XXX";
	-- OR RA,RB
	when "01000" => Sel_ALU <= "011"; Escr_Perif_Saida <= '0'; Sel_Data <= "00"; 
	Escr_Registo <= '1'; WR <= '0'; Sel_PC <= "000"; Comp_Flag <='0'; Sel_Comp <= "XXX";
	-- XOR RA,RB
	when "01001" => Sel_ALU <= "100"; Escr_Perif_Saida <= '0'; Sel_Data <= "00"; 
	Escr_Registo <= '1'; WR <= '0'; Sel_PC <= "000"; Comp_Flag <='0'; Sel_Comp <= "XXX";
	-- CMP RA,RB
	when "01010" => Sel_ALU <= "101"; Escr_Perif_Saida <= '0'; Sel_Data <= "XX"; 
	Escr_Registo <= '0'; WR <= '0'; Sel_PC <= "000"; Comp_Flag <='1'; Sel_Comp <= "XXX";
	-- JG constante
	when "01011" => Sel_ALU <= "XXX"; Escr_Perif_Saida <= '0'; Sel_Data <= "XX"; 
	Escr_Registo <= '0'; WR <= '0'; Sel_PC <= "010"; Comp_Flag <='0'; Sel_Comp <= "000";
	-- JGE constante
	when "01100" => Sel_ALU <= "XXX"; Escr_Perif_Saida <= '0'; Sel_Data <= "XX"; 
	Escr_Registo <= '0'; WR <= '0'; Sel_PC <= "010"; Comp_Flag <='0'; Sel_Comp <= "001";
	-- JE constante
	when "01101" => Sel_ALU <= "XXX"; Escr_Perif_Saida <= '0'; Sel_Data <= "XX"; 
	Escr_Registo <= '0'; WR <= '0'; Sel_PC <= "010"; Comp_Flag <='0'; Sel_Comp <= "010";
	-- JLE constante
	when "01110" => Sel_ALU <= "XXX"; Escr_Perif_Saida <= '0'; Sel_Data <= "XX"; 
	Escr_Registo <= '0'; WR <= '0'; Sel_PC <= "010"; Comp_Flag <='0'; Sel_Comp <= "011";
	-- JL constante
	when "01111" => Sel_ALU <= "XXX"; Escr_Perif_Saida <= '0'; Sel_Data <= "XX"; 
	Escr_Registo <= '0'; WR <= '0'; Sel_PC <= "010"; Comp_Flag <='0'; Sel_Comp <= "100";
	-- JMP constante
	when "10000" => Sel_ALU <= "XXX"; Escr_Perif_Saida <= '0'; Sel_Data <= "XX"; 
	Escr_Registo <= '0'; WR <= '0'; Sel_PC <= "001"; Comp_Flag <='0'; Sel_Comp <= "XXX";
	-- JN RA, constante
	when "10001" => Sel_ALU <= "XXX"; Escr_Perif_Saida <= '0'; Sel_Data <= "XX"; 
	Escr_Registo <= '0'; WR <= '0'; Sel_PC <= "011"; Comp_Flag <='0'; Sel_Comp <= "XXX";
	-- JZ RA, constante
	when "10010" => Sel_ALU <= "XXX"; Escr_Perif_Saida <= '0'; Sel_Data <= "XX"; 
	Escr_Registo <= '0'; WR <= '0'; Sel_PC <= "100"; Comp_Flag <='0'; Sel_Comp <= "XXX";	
	-- NOP
	when others => Sel_ALU <= "XXX"; Escr_Perif_Saida <= '0'; Sel_Data <= "XX"; 
	Escr_Registo <= '0';	WR <= '0'; Sel_PC <= "000"; Comp_Flag <='0'; Sel_Comp <= "XXX";

	end case;
end process;


end Behavioral;

