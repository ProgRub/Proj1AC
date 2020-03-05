--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:34:59 03/04/2020
-- Design Name:   
-- Module Name:   C:/Users/35196/Desktop/Proj1AC/Test_MuxRegistos.vhd
-- Project Name:  Proj1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux_Registos
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
 
ENTITY Test_MuxRegistos IS
END Test_MuxRegistos;
 
ARCHITECTURE behavior OF Test_MuxRegistos IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux_Registos
    PORT(
         Resultado : IN  std_logic_vector(7 downto 0);
         Dados_IN : IN  std_logic_vector(7 downto 0);
         Dados_M : IN  std_logic_vector(7 downto 0);
         Constante : IN  std_logic_vector(7 downto 0);
         SEL_Data : IN  std_logic_vector(1 downto 0);
         Dados_Reg : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Resultado : std_logic_vector(7 downto 0) := (others => '0');
   signal Dados_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal Dados_M : std_logic_vector(7 downto 0) := (others => '0');
   signal Constante : std_logic_vector(7 downto 0) := (others => '0');
   signal SEL_Data : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Dados_Reg : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	signal clk : std_logic := '0';
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux_Registos PORT MAP (
          Resultado => Resultado,
          Dados_IN => Dados_IN,
          Dados_M => Dados_M,
          Constante => Constante,
          SEL_Data => SEL_Data,
          Dados_Reg => Dados_Reg
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
	Resultado <= "00001111";
	Dados_IN <= "01100000";
	Dados_M <= "00010100";
	Constante <= "10000001";
      -- hold reset state for 100 ns.
      wait for 10 ns;	

      SEL_Data <= "00";wait for clk_period;
      SEL_Data <= "01";wait for clk_period;
      SEL_Data <= "10";wait for clk_period;
      SEL_Data <= "11";wait for clk_period;
   end process;

END;
