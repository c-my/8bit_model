-- ALU
-- 仿真通过

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity alu is
	port(
		clk:	in std_logic;
		en_Add: in std_logic;
		en_Sub: in std_logic;
		en_And: in std_logic;
		en_Or:  in std_logic;
		en_Not: in std_logic;
		en_NEG: in std_logic;
		en_D:	  in std_logic;	-- 0时不运算 输出acc
		q:out std_logic_vector(7 downto 0);	-- 输出
		accD:in std_logic_vector(7 downto 0);	-- 输入
		dBus: in std_logic_vector(7 downto 0)	-- 输入
	);
end alu;

architecture aluReg of alu is
signal regq: std_logic_vector(7 downto 0);
	begin
		process(clk,en_D)
		begin
			if clk'event and clk='1' then
				if en_D='1' then
					if en_Add='1' then
						regq<=accD+dbus;
					elsif en_Sub='1' then
						regq<=accD-dbus;
					elsif en_And='1' then
						regq<=accD and dbus;
					elsif en_Or='1' then
						regq<=accD or dBus;
					elsif en_Not='1' then
						regq<=not accD;
					elsif en_NEG='1' then
						regq<=(not accD) + 1;
					end if;
				end if;
			end if;
		end process;
	q<=regq;
end aluReg;