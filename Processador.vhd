library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Processador is
    Port ( Pin,Dados_M, Const : in  STD_LOGIC_VECTOR (7 downto 0);
           Clk, Reset, Sel_R : in  STD_LOGIC;
           Opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           Pout, Endereco, Op1,Const_Out : out  STD_LOGIC_VECTOR (7 downto 0);
			  WR : out STD_LOGIC);
end Processador;

architecture Struct of Processador is
Component Comparacao is
    Port ( Comp_Res : in  STD_LOGIC_VECTOR (4 downto 0);
           Comp_Flag : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Sel_Comp : in  STD_LOGIC_VECTOR (2 downto 0);
           S_Flag : out  STD_LOGIC);
end Component;

Component Mux_PC is
    Port ( S_FLAG : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_PC : in  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_PC : out  STD_LOGIC);
end Component;

Component Mux_Registos is
    Port ( Resultado : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_Data : in  STD_LOGIC_VECTOR (1 downto 0);
           Dados_Reg : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component Periferico_Entrada is
    Port ( ESCR_P : in  STD_LOGIC;
           PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_In : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component Periferico_Saida is
    Port ( Escr_P : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           POut : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component ProgramCounter is
    Port ( Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           ESCR_PC,Clock,Reset : in  STD_LOGIC;
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component ROM_Descodificacao is
    Port ( Opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           Sel_ALU : out  STD_LOGIC_VECTOR (2 downto 0);
           Escr_Perif_Saida : out  STD_LOGIC;
           Sel_Data : out  STD_LOGIC_VECTOR (1 downto 0);
           Escr_Registo : out  STD_LOGIC;
           WR : out  STD_LOGIC;
           Sel_PC : out  STD_LOGIC_VECTOR (2 downto 0);
           Comp_Flag : out  STD_LOGIC;
           Sel_Comp : out  STD_LOGIC_VECTOR (2 downto 0));
end Component;

Component RegistosAeB is
    Port ( ESCR_R : in  STD_LOGIC;
           Dados_R : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Operando1 : out  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component ALU is
    Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : in  STD_LOGIC_VECTOR (7 downto 0);
           Sel_ALU : in  STD_LOGIC_VECTOR (2 downto 0);
           Resultado : out  STD_LOGIC_VECTOR (7 downto 0);
           Comp_Res : out  STD_LOGIC_VECTOR (4 downto 0));
end Component;

signal escrPerifs,escrPC, S_Flag, Compa_Flag,Select_Reg,Escreve_Reg: STD_LOGIC;
signal DadosPIN, Ope1,Op2, ResultadoALU,Dados_REG: STD_LOGIC_VECTOR (7 downto 0);
signal Selec_PC, Selec_Comp, Selec_ALU : STD_LOGIC_VECTOR (2 downto 0);
signal Sel_Data : STD_LOGIC_VECTOR (1 downto 0);
signal Resultado_Comparacao : STD_LOGIC_VECTOR (4 downto 0);
begin
PerifIn: Periferico_Entrada Port Map(escrPerifs,Pin,DadosPIN);
PerifOut: Periferico_Saida Port Map(escrPerifs,Clk,Ope1,Pout);
Multiplexer_PC: Mux_PC Port Map(S_Flag,Ope1,Selec_PC,escrPC);
PC: ProgramCounter Port Map(Const,escrPC,Clk, Reset, Endereco);
Comp: Comparacao Port Map(Resultado_Comparacao,Compa_Flag,Clk,Selec_Comp,S_Flag);
MUX_Reg: Mux_Registos Port Map(ResultadoALU,DadosPIN,Dados_M,Const,Sel_Data,Dados_REG);
ArithLU: ALU Port Map(Ope1,Op2,Selec_ALU,ResultadoALU,Resultado_Comparacao);
RegAeB: RegistosAeB Port Map(Escreve_Reg,Dados_REG,Sel_R,Clk,Ope1,Op2);
ROM_Decode: ROM_Descodificacao Port Map(Opcode,Selec_ALU,escrPerifs,Sel_Data,Escreve_Reg,WR,Selec_PC,Compa_Flag,Selec_Comp);
Op1 <= Ope1;

end Struct;

