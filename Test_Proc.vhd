LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test_Proc IS
END Test_Proc;
 
ARCHITECTURE behavior OF Test_Proc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Processador
    PORT(  Pin,Dados_M, Const : in  STD_LOGIC_VECTOR (7 downto 0);
           Clk, Reset, Sel_R : in  STD_LOGIC;
           Opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           Pout, Endereco, Op1,Const_Out, ResulALU, Op2 : out  STD_LOGIC_VECTOR (7 downto 0);
			  ResComp : out  STD_LOGIC_VECTOR (4 downto 0);
			  WR : out STD_LOGIC);
    END COMPONENT;
    

   --Inputs
   signal Pin : std_logic_vector(7 downto 0) := (others => '0');
   signal Dados_M : std_logic_vector(7 downto 0) := (others => '0');
   signal Const : std_logic_vector(7 downto 0) := (others => '0');
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Sel_R : std_logic := '0';
   signal Opcode : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal Pout : std_logic_vector(7 downto 0);
   signal Endereco : std_logic_vector(7 downto 0);
   signal Op1 : std_logic_vector(7 downto 0);
   signal Const_Out : std_logic_vector(7 downto 0);
   signal ResulALU : std_logic_vector(7 downto 0);
   signal Op2 : std_logic_vector(7 downto 0);
   signal ResComp : std_logic_vector(4 downto 0);
   signal WR : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Processador PORT MAP (
          Pin => Pin,
          Dados_M => Dados_M,
          Const => Const,
          Clk => Clk,
          Reset => Reset,
          Sel_R => Sel_R,
          Opcode => Opcode,
          Pout => Pout,
          Endereco => Endereco,
          Op1 => Op1,
          Const_Out => Const_Out,
			 ResulALU => ResulALU,
			 Op2 => Op2,
			 ResComp => ResComp,
          WR => WR
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
      -- hold reset state for 100 ns.
		Reset<='1';
      wait for Clk_period*2;
		Reset<='0';	Pin <= "00000110";

	Opcode <= "00010"; Sel_R <= '0'; Const <= "00000011"; Dados_M <= "00000000"; wait for Clk_period;
	Opcode <= "00100"; Sel_R <= '0'; Const <= "00000000";	Dados_M <= "00000000"; wait for Clk_period;
	Opcode <= "00010"; Sel_R <= '0'; Const <= "00010100";	Dados_M <= "00000000"; wait for Clk_period;
	Opcode <= "00100"; Sel_R <= '0'; Const <= "00000001";	Dados_M <= "00001111"; wait for Clk_period;
	Opcode <= "00000"; Sel_R <= '0'; Const <= "XXXXXXXX";	Dados_M <= "00001111"; wait for Clk_period;

	Opcode <= "10001"; Sel_R <= 'X'; Const <= "00010110";	Dados_M <= "00001111"; wait for Clk_period;
	Opcode <= "00010"; Sel_R <= '1'; Const <= "01010000";	Dados_M <= "00001111"; wait for Clk_period;
	Opcode <= "01010"; Sel_R <= 'X'; Const <= "XXXXXXXX";	Dados_M <= "00001111"; wait for Clk_period;
	Opcode <= "01100"; Sel_R <= 'X'; Const <= "00011011";	Dados_M <= "00001111"; wait for Clk_period;
	Opcode <= "00100"; Sel_R <= '0'; Const <= "00000010";	Dados_M <= "00001111"; wait for Clk_period;
	
	Opcode <= "00100"; Sel_R <= '0'; Const <= "00000011";	Dados_M <= "00001111"; wait for Clk_period;
	Opcode <= "00011"; Sel_R <= '0'; Const <= "00000000";	Dados_M <= "00001111"; wait for Clk_period;
	Opcode <= "00010"; Sel_R <= '1'; Const <= "00000001";	Dados_M <= "00001111"; wait for Clk_period;
	Opcode <= "00110"; Sel_R <= '0'; Const <= "XXXXXXXX";	Dados_M <= "00001111"; wait for Clk_period;
	Opcode <= "10010"; Sel_R <= 'X'; Const <= "00010100";	Dados_M <= "00001111"; wait for Clk_period;
	
	Opcode <= "00100"; Sel_R <= '0'; Const <= "00000000";	Dados_M <= "00000000"; wait for Clk_period;
	Opcode <= "00011"; Sel_R <= '0'; Const <= "00000011";	Dados_M <= "00000000"; wait for Clk_period;
	Opcode <= "00011"; Sel_R <= '1'; Const <= "00000010";	Dados_M <= "00000000"; wait for Clk_period;
	Opcode <= "00101"; Sel_R <= '0'; Const <= "XXXXXXXX";	Dados_M <= "00000000"; wait for Clk_period;
	Opcode <= "10000"; Sel_R <= 'X'; Const <= "00001010";	Dados_M <= "00000000"; wait for Clk_period;
	
	
	Opcode <= "00011"; Sel_R <= '0'; Const <= "00000011";	Dados_M <= "00000000"; wait for Clk_period;
	Opcode <= "10000"; Sel_R <= 'X'; Const <= "00011101";	Dados_M <= "00000000"; wait for Clk_period;
	Opcode <= "00010"; Sel_R <= '1'; Const <= "11111111";	Dados_M <= "00000000"; wait for Clk_period;
	Opcode <= "01001"; Sel_R <= 'X'; Const <= "XXXXXXXX";	Dados_M <= "00000000"; wait for Clk_period;
	Opcode <= "00010"; Sel_R <= '1'; Const <= "00000001";	Dados_M <= "00000000"; wait for Clk_period;
	
	
	Opcode <= "00101"; Sel_R <= '0'; Const <= "XXXXXXXX";	Dados_M <= "00000000"; wait for Clk_period;
	Opcode <= "10000"; Sel_R <= 'X'; Const <= "00011101";	Dados_M <= "00000000"; wait for Clk_period;
	Opcode <= "00011"; Sel_R <= '1'; Const <= "00000001";	Dados_M <= "00000000"; wait for Clk_period;
	Opcode <= "00110"; Sel_R <= '0'; Const <= "XXXXXXXX";	Dados_M <= "00000000"; wait for Clk_period;
	Opcode <= "10000"; Sel_R <= 'X'; Const <= "00011101";	Dados_M <= "00000000"; wait for Clk_period;
	Opcode <= "00001"; Sel_R <= '0'; Const <= "XXXXXXXX";	Dados_M <= "00000000"; wait for Clk_period;


      wait;
   end process;

END;
