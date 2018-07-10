-- 节拍器

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity metronome is
	port(
		clk,clr: in std_logic;
		t0,t1,t2,t3,t4,t5,t6,t7: out std_logic
	);
end metronome;

architecture behav of metronome is
signal tmp:std_logic_vector(7 downto 0);
begin
	t0<=tmp(0);
	t1<=tmp(1);
	t2<=tmp(2);
	t3<=tmp(3);
	t4<=tmp(4);
	t5<=tmp(5);
	t6<=tmp(6);
	t7<=tmp(7);
	process(clk,clr)
	begin
		if clr='1' then
			tmp(0)<='1';
			tmp(1)<='0';
			tmp(2)<='0';
			tmp(3)<='0';
			tmp(4)<='0';
			tmp(5)<='0';
			tmp(6)<='0';
			tmp(7)<='0';
		elsif rising_edge(clk) then
			tmp(0)<=tmp(7);
			tmp(1)<=tmp(0);
			tmp(2)<=tmp(1);
			tmp(3)<=tmp(2);
			tmp(4)<=tmp(3);
			tmp(5)<=tmp(4);
			tmp(6)<=tmp(5);
			tmp(7)<=tmp(6);
		end if;
	end process;
end behav;
