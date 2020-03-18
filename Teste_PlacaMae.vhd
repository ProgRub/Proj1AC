LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Teste_PlacaMae IS
END Teste_PlacaMae;
 
ARCHITECTURE behavior OF Teste_PlacaMae IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PlacaMae
    PORT(
         Pin : IN  std_logic_vector(7 downto 0);
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         Pout : OUT  std_logic_vector(7 downto 0)
         --Endereco : OUT  std_logic_vector(7 downto 0);
         --Op1 : OUT  std_logic_vector(7 downto 0);
         --Const_Out : OUT  std_logic_vector(7 downto 0);
         --ResulALU : OUT  std_logic_vector(7 downto 0);
         --Op2 : OUT  std_logic_vector(7 downto 0);
         --Dados_Memoria : OUT  std_logic_vector(7 downto 0);			
         --ResComp : OUT  std_logic_vector(4 downto 0);
         --WR : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Pin : std_logic_vector(7 downto 0) := (others => '0');
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal Pout : std_logic_vector(7 downto 0);
   --signal Endereco : std_logic_vector(7 downto 0);
   --signal Op1 : std_logic_vector(7 downto 0);
   --signal Const_Out : std_logic_vector(7 downto 0);
   --signal ResulALU : std_logic_vector(7 downto 0);
   --signal Op2 : std_logic_vector(7 downto 0);
   --signal ResComp : std_logic_vector(4 downto 0);
   --signal WR : std_logic;
   --signal Dados_Memoria : std_logic_vector(7 downto 0);		

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PlacaMae PORT MAP (
          Pin => Pin,
          Clk => Clk,
          Reset => Reset,
          Pout => Pout
          --Endereco => Endereco,
          --Op1 => Op1,
          --Const_Out => Const_Out,
          --ResulALU => ResulALU,
          --Op2 => Op2,
          --ResComp => ResComp,
          --WR => WR,
			 --Dados_Memoria => Dados_Memoria
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
	--"11111110" JN -> -N
	--"01111110" JGE -> N-20
	--"00001111" N*3
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		Reset <= '1'; wait for Clk_period*2;
		Reset <= '0'; Pin <= "00001111"; wait for Clk_period*50;

      -- insert stimulus here 

      wait;
   end process;

END;
