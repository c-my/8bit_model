-- 地址寄存器
-- 仿真通过

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned;

entity ar is
	port(
		clk: in std_logic;
		en_D: in std_logic;
		addr_in: in std_logic_vector(7 downto 0);
		addr_out: out std_logic_vector(7 downto 0)
	);
end ar;

architecture behav of ar is

begin
	process(clk)
	begin
		if clk'event and clk='1' then
			if en_D='1' then
				addr_out<=addr_in;
			end if;
		end if;
	end process;

end behav;