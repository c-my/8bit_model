-- 指斥寄存器
-- problem: 初始o_LOAD=1

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ir is
	port(
		clk: in std_logic;
		en_D: in std_logic;
		DATA_IN: in std_logic_vector(7 downto 0);	-- 输入操作码
		o_LOAD,o_STORE,o_ADD,o_SUB,o_AND,o_OR,o_NOT,o_NEG,o_HALT: out std_logic;	-- 输出控制端
		DATA_OUT:out std_logic_vector(3 downto 0)	-- 输出操作数
	);
end ir;

architecture behav of ir is
signal regq: std_logic_vector(7 downto 0);--:= "00000000";
signal head: std_logic_vector(3 downto 0);
signal tail: std_logic_vector(3 downto 0);
begin
	process(clk, en_D)
	begin
		if clk'event and clk='1' then
			if en_D='1' then
				regq<=DATA_IN;
			end if;
		end if;
	end process;
	
	process(regq)
	begin
		head<=regq(7)&regq(6)&regq(5)&regq(4);
		tail<=regq(3)&regq(2)&regq(1)&regq(0);
		o_LOAD	<='0';
		o_STORE	<='0';
		o_ADD		<='0';
		o_SUB		<='0';
		o_AND		<='0';
		o_OR		<='0';
		o_NOT		<='0';
		o_NEG		<='0';
		o_HALT	<='0';
		--判断regq前4位
		case head is
			when "1000" => o_LOAD	<='1';
			when "0001" => o_STORE	<='1';
			when "0010" => o_ADD		<='1';
			when "0011" => o_SUB		<='1';
			when "0100" => o_AND		<='1';
			when "0101" => o_OR 		<='1';
			when "0110" => o_NOT		<='1';
			when "0111" => o_NEG 	<='1';
			when "1001" => o_HALT	<='1';
			when others => null;
		end case;
		--输出regq后4位
		DATA_OUT<=tail;
	end process;
end behav;