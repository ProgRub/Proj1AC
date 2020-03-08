LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TesteRAM IS
END TesteRAM;
 
ARCHITECTURE behavior OF TesteRAM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM
    PORT(
         Operando1 : IN  std_logic_vector(7 downto 0);
         Address : IN  std_logic_vector(7 downto 0);
         WR : IN  std_logic;
         Clock : IN  std_logic;
         Dados_M : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');
   signal Address : std_logic_vector(7 downto 0) := (others => '0');
   signal WR : std_logic := '0';
   signal Clock : std_logic := '0';

 	--Outputs
   signal Dados_M : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clock_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM PORT MAP (
          Operando1 => Operando1,
          Address => Address,
          WR => WR,
          Clock => Clock,
          Dados_M => Dados_M
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;
		WR <='1'; Address<="00000000"; Operando1 <= "00001111";
      wait for Clock_period;
		WR <='0'; Address<="00000000"; Operando1 <= "00000000";
      wait for Clock_period;
		WR <='0'; Address<="00000001"; Operando1 <= "00000000";
      wait for Clock_period;

      -- insert stimulus here 

      wait;
   end process;

END;
