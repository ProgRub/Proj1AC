LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TesteRegistos IS
END TesteRegistos;
 
ARCHITECTURE behavior OF TesteRegistos IS 

    COMPONENT RegistosAeB
    PORT(
         ESCR_R : IN  std_logic;
         Dados_R : IN  std_logic_vector(7 downto 0);
         SEL_R : IN  std_logic;
         clk : IN  std_logic;
         Operando1 : OUT  std_logic_vector(7 downto 0);
         Operando2 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ESCR_R : std_logic := '0';
   signal Dados_R : std_logic_vector(7 downto 0) := (others => '0');
   signal SEL_R : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Operando1 : std_logic_vector(7 downto 0);
   signal Operando2 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegistosAeB PORT MAP (
          ESCR_R => ESCR_R,
          Dados_R => Dados_R,
          SEL_R => SEL_R,
          clk => clk,
          Operando1 => Operando1,
          Operando2 => Operando2
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
      
      wait for 100 ns;	
		ESCR_R <= '1'; SEL_R <= '0'; Dados_R <= "00000011";
      wait for clk_period;
		ESCR_R <= '1'; SEL_R <= '1'; Dados_R <= "00001011";
      wait for clk_period;

      -- insert stimulus here 

      wait;
   end process;

END;