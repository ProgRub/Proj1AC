library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--ResComp : out  STD_LOGIC_VECTOR (4 downto 0);
--WR : out STD_LOGIC
--, Endereco, Op1,Const_Out, ResulALU, Op2,Dados_Memoria
entity PlacaMae is
    Port ( Pin : in  STD_LOGIC_VECTOR (7 downto 0);
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Pout : out  STD_LOGIC_VECTOR (7 downto 0));
end PlacaMae;

architecture Struct of PlacaMae is
Component Memoria_Instrucoes is
	Port (Endereco : in  STD_LOGIC_VECTOR (7 downto 0);
           Opcode : out  STD_LOGIC_VECTOR (4 downto 0);
           Sel_R : out  STD_LOGIC;
           Constante : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component Processador is
    Port ( Pin,Dados_M, Const : in  STD_LOGIC_VECTOR (7 downto 0);
           Clk, Reset, Sel_R : in  STD_LOGIC;
           Opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           Pout, Endereco, Op1,Const_Out, ResulALU, Op2 : out  STD_LOGIC_VECTOR (7 downto 0);
			  ResComp : out  STD_LOGIC_VECTOR (4 downto 0);
			  WR : out STD_LOGIC);
end Component;

Component RAM is
    Port ( Operando1, Address : in  STD_LOGIC_VECTOR (7 downto 0);
           WR, Clock : in  STD_LOGIC;
           Dados_M : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

signal Select_Reg,WriteRead: STD_LOGIC;
signal Const,NAOIMPORTA,Instrucao, Dados_Mem, Operando1, ResulALU, Op2: STD_LOGIC_VECTOR (7 downto 0);
signal OPCode, ResComp : STD_LOGIC_VECTOR (4 downto 0);
begin
Proc: Processador Port Map(Pin, Dados_Mem, Const, Clk, Reset, Select_Reg, OPCode, Pout, Instrucao, Operando1, NAOIMPORTA, ResulALU, Op2, ResComp, WriteRead);
Mem_Instrucs: Memoria_Instrucoes Port Map(Instrucao,OPCode,Select_Reg,Const);
Mem_Dados: RAM Port Map(Operando1,Const,WriteRead,Clk,Dados_Mem);
--WR <= WriteRead;
--Op1 <= Operando1;
--Endereco <= Instrucao;
--Const_Out <= Const;
--Dados_Memoria <= Dados_Mem;

end Struct;

