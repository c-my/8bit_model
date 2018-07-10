-- 程序计数器
-- 仿真通过


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity pc is
	port(
		clk,clr: in std_logic;
		en_D: in std_logic;
		pc_out: out std_logic_vector(7 downto 0)
	);
end pc;

architecture behav of pc is
signal pcout:std_logic_vector(7 downto 0);
begin
	process(clk,clr)
	begin
		if clr='1' then
			pcout<="00000000";
		elsif clk'event and clk='1' then
			if en_D='1' then
				pcout<=pcout+1;
			end if;
		end if;
	end process;
	pc_out<=pcout;
end behav;