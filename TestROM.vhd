--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:52:39 03/04/2020
-- Design Name:   
-- Module Name:   C:/Users/35196/Desktop/Proj1AC/TestROM.vhd
-- Project Name:  Proj1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM_Descodificacao
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TestROM IS
END TestROM;
 
ARCHITECTURE behavior OF TestROM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ROM_Descodificacao
    PORT(
         Opcode : IN  std_logic_vector(4 downto 0);
         Sel_ALU : OUT  std_logic_vector(2 downto 0);
         Escr_Perif_Saida : OUT  std_logic;
         Sel_Data : OUT  std_logic_vector(1 downto 0);
         Escr_Registo : OUT  std_logic;
         WR : OUT  std_logic;
         Sel_PC : OUT  std_logic_vector(2 downto 0);
         Comp_Flag : OUT  std_logic;
         Sel_Comp : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Opcode : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal Sel_ALU : std_logic_vector(2 downto 0);
   signal Escr_Perif_Saida : std_logic;
   signal Sel_Data : std_logic_vector(1 downto 0);
   signal Escr_Registo : std_logic;
   signal WR : std_logic;
   signal Sel_PC : std_logic_vector(2 downto 0);
   signal Comp_Flag : std_logic;
   signal Sel_Comp : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace clk below with 
   -- appropriate port name 
	signal clk : std_logic := '0';
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ROM_Descodificacao PORT MAP (
          Opcode => Opcode,
          Sel_ALU => Sel_ALU,
          Escr_Perif_Saida => Escr_Perif_Saida,
          Sel_Data => Sel_Data,
          Escr_Registo => Escr_Registo,
          WR => WR,
          Sel_PC => Sel_PC,
          Comp_Flag => Comp_Flag,
          Sel_Comp => Sel_Comp
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		Opcode <= "00000"; wait for clk_period;
		Opcode <= "00001"; wait for clk_period;
		Opcode <= "00010"; wait for clk_period;
		Opcode <= "00011"; wait for clk_period;
		Opcode <= "00100"; wait for clk_period;
		Opcode <= "00101"; wait for clk_period;
		Opcode <= "00110"; wait for clk_period;
		Opcode <= "00111"; wait for clk_period;
		Opcode <= "01000"; wait for clk_period;
		Opcode <= "01001"; wait for clk_period;
		Opcode <= "01010"; wait for clk_period;
		Opcode <= "01011"; wait for clk_period;
		Opcode <= "01100"; wait for clk_period;
		Opcode <= "01101"; wait for clk_period;
		Opcode <= "01110"; wait for clk_period;
		Opcode <= "01111"; wait for clk_period;
		Opcode <= "10000"; wait for clk_period;
		Opcode <= "10001"; wait for clk_period;
		Opcode <= "10010"; wait for clk_period;
		Opcode <= "10011"; wait for clk_period;
		Opcode <= "10100"; wait for clk_period;

      -- insert stimulus here 

      wait;
   end process;

END;
