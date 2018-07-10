-- 数据寄存器
-- 仿真通过


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned;

entity dr is
	port(
		clk: in std_logic;
		en_D: in std_logic;
		data_in: in std_logic_vector(7 downto 0);
		data_out: out std_logic_vector(7 downto 0)
	);
end dr;

architecture behav of dr is
signal regq: std_logic_vector(7 downto 0);
begin
	process(clk)
	begin
		if clk'event and clk='1' then
			if en_D='1' then
				regq<=data_in;
			end if;
		end if;
	end process;
	data_out<=regq;
end behav;