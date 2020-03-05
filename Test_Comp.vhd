LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test_Comp IS
END Test_Comp;
 
ARCHITECTURE behavior OF Test_Comp IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparacao
    PORT(
         Comp_Res : IN  std_logic_vector(4 downto 0);
         Comp_Flag : IN  std_logic;
         Clk : IN  std_logic;
         Sel_Comp : IN  std_logic_vector(2 downto 0);
         S_Flag : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Comp_Res : std_logic_vector(4 downto 0) := (others => '0');
   signal Comp_Flag : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Sel_Comp : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal S_Flag : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparacao PORT MAP (
          Comp_Res => Comp_Res,
          Comp_Flag => Comp_Flag,
          Clk => Clk,
          Sel_Comp => Sel_Comp,
          S_Flag => S_Flag
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
   stim_proc: process
   begin	
	Sel_Comp <= "100";
	Comp_Res <= "00011"; wait for Clk_period;
	Comp_Flag <= '1'; wait for Clk_period;
	Sel_Comp <= "001";wait for Clk_period/6;
	Sel_Comp <= "010";wait for Clk_period/6;
	Comp_Flag <= '0'; wait for Clk_period;
	Comp_Res <= "11000"; wait for Clk_period;
	Sel_Comp <= "100";Comp_Flag <= '1'; wait for Clk_period;

      -- insert stimulus here 

      wait;
   end process;

END;
