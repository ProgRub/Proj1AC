--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:29:47 03/04/2020
-- Design Name:   
-- Module Name:   C:/Users/35196/Desktop/Proj1AC/TestPerifSaida.vhd
-- Project Name:  Proj1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Periferico_Saida
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
 
ENTITY TestPerifSaida IS
END TestPerifSaida;
 
ARCHITECTURE behavior OF TestPerifSaida IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Periferico_Saida
    PORT(
         Escr_P : IN  std_logic;
         CLK : IN  std_logic;
         Operando1 : IN  std_logic_vector(7 downto 0);
         POut : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Escr_P : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal POut : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Periferico_Saida PORT MAP (
          Escr_P => Escr_P,
          CLK => CLK,
          Operando1 => Operando1,
          POut => POut
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	Operando1 <= "00001010";
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		Escr_P<='0';wait for CLK_period;
		Escr_P<='1';wait for CLK_period;
		Operando1 <= "10100010";wait for CLK_period;

      -- insert stimulus here 

      wait;
   end process;

END;
