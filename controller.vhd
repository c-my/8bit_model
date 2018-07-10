-- 控制器

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned;

entity controller is
	port(
		clk: in std_logic;
		t0,t1,t2,t3,t4,t5,t6,t7: in std_logic;	-- 节拍输入
		i_LOAD,i_STORE,i_ADD,i_SUB,i_AND,i_OR,i_NOT,i_NEG,i_HALT: in std_logic;	-- 输入控制端
		data_num: in std_logic_vector(3 downto 0);
		en_ALU_D: out std_logic;	-- ACC使能
		en_PC: out std_logic;	-- PC使能
		en_AR: out std_logic;	-- AR使能
		en_DR: out std_logic;	-- DR使能
		clr_ME: out std_logic;	--节拍器清零
		en_IR: out std_logic;
		w_RAM: out std_logic;
		w_RAM_data: out std_logic_vector(7 downto 0);
		w_RAM_addr: out std_logic_vector(7 downto 0);
		test_RESULT: out std_logic;
		clr_PC: out std_logic;
		data_out: out std_logic_vector(7 downto 0);
		clr_ACC:out std_logic;
		en_dBus,en_ALU: out std_logic;
		o_ADD,o_SUB,o_AND,o_OR,o_NOT,o_NEG: out std_logic
	);
end controller;

architecture behav of controller is
begin

	process(clk,t0,t1,t2,t3,t4,t5,t6,t7)
	begin
		if clk'event and clk='1' then
				en_ALU_D<='0';
				en_PC<='0';
				en_AR<='1';
				en_DR<='1';
				en_IR<='1';
				
				w_RAM<='0';
				w_RAM_addr<="00000000";
				w_RAM_data<="00000000";
				
				clr_ME<='0';
				clr_PC<='0';
				clr_ACC<='0';
				
				en_dBus<='0';
				en_ALU<='0';
				
				data_out<="0000"&data_num;
				
				o_ADD<='0';
				o_SUB<='0';
				o_AND<='0';
				o_OR<='0';
				o_NOT<='0';
				o_NEG<='0';
		
			if t0='1' then
				en_PC<='0';
			elsif t1='1' then
				en_PC<='0';	--停止计数
			elsif t2='1' then
				null;			
			elsif t3='1' then
				null;
			elsif t4='1' then
				null;
			elsif t5='1' then	-- 处理指令
				if i_LOAD = '1' then	-- 送数
					en_ALU<='0';
					en_dBus<='1';
				elsif i_HALT='1' then
					clr_PC<='1';
					clr_ME<='1';
				elsif i_ADD='1' then	--开启计算
					en_ALU_D<='1';
					o_ADD<='1';	-- 控制+
				elsif i_SUB='1' then
					en_ALU_D<='1';
					o_SUB<='1';
				elsif i_AND='1' then
					en_ALU_D<='1';
					o_AND<='1';
				elsif i_OR='1' then
					en_ALU_D<='1';
					o_OR<='1';
				elsif i_NOT='1' then
					en_ALU_D<='1';
					o_NOT<='1';
				elsif i_NEG='1' then
					en_ALU_D<='1';
					o_NEG<='1';
				end if;
			elsif t6='1' then
				if i_LOAD='1' then	-- 关闭acc 节拍复位
					en_dBus<='0';
					clr_ME<='1';
					en_PC<='1';
				elsif i_ADD='1' then
					en_ALU_D<='0';
					o_ADD<='0';	-- 控制+
					en_ALU<='1';
				elsif i_SUB='1' then
					en_ALU_D<='0';
					o_SUB<='0';
					en_ALU<='1';
				elsif i_AND='1' then
					en_ALU_D<='0';
					o_AND<='0';
					en_ALU<='1';
				elsif i_OR='1' then
					en_ALU_D<='0';
					o_OR<='0';
					en_ALU<='1';
				elsif i_NOT='1' then
					en_ALU_D<='0';
					o_NOT<='0';
					en_ALU<='1';
				elsif i_NEG='1' then
					en_ALU_D<='0';
					o_NEG<='1';
					en_ALU<='1';
				end if;
			elsif t7='1' then
				if i_ADD='1' then
					en_ALU<='0';
					clr_ME<='1';
					en_PC<='1';
				elsif i_SUB='1' then
					en_ALU<='0';
					clr_ME<='1';
					en_PC<='1';
				elsif i_AND='1' then
					en_ALU<='0';
					clr_ME<='1';
					en_PC<='1';
				elsif i_OR='1' then
					en_ALU<='0';
					clr_ME<='1';
					en_PC<='1';
				elsif i_NOT='1' then
					en_ALU<='0';
					clr_ME<='1';
					en_PC<='1';
				elsif i_NEG='1' then
					en_ALU<='0';
					clr_ME<='1';
					en_PC<='1';
				end if;
			else
				null;
			end if;
		
			if i_LOAD='1' then
				test_RESULT<='1';
			else
				test_RESULT<='0';
			end if;
		end if;

	end process;
end behav;