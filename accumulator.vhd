-- 累加器


library ieee;
use ieee.std_logic_1164.all;

entity accumulator is
	port(
		clk:in std_logic;
		reset: in std_logic;
		en_dBus:in std_logic;	--dbus输入
		en_Alu:in std_logic;	-- ALU输入
		aluD: in std_logic_vector(7 downto 0);	-- 接ALU数据线
		dBus: in std_logic_vector(7 downto 0);	-- 接数据总线
		q: out std_logic_vector(7 downto 0) -- 输出
	);
end accumulator;

architecture accArch of accumulator is
signal accReg:std_logic_vector(7 downto 0);
begin
	process(clk)
	begin
		if clk'event and clk='1' then
			if reset='1' then
				accReg<="00000000";
			elsif en_Alu='1' then
				accReg<=aluD;	-- ALU输入
			elsif en_dBus='1' then
				accReg<=dbus;	-- 总线输入
			end if;
		end if;
	end process;
	q<=accReg;
			
end accArch;