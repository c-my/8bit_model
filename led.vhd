-- led 译码

library ieee;
use ieee.std_logic_1164.all;

entity led is
	port(
		data_in:std_logic_vector(7 downto 0);
		A,B,C,D,E,F,G: out std_logic;
		en_tail:out std_logic
	);
end led;

architecture behav of led is
signal head: std_logic_vector(3 downto 0);
signal tail: std_logic_vector(3 downto 0);

begin
	process(data_in)
	begin
		head<=data_in(7)&data_in(6)&data_in(5)&data_in(4);
		tail<=data_in(3)&data_in(2)&data_in(1)&data_in(0);
			en_tail<='0';
			case tail is
				when "0000" =>
					A<='0';
					B<='0';
					C<='0';
					D<='0';
					E<='0';
					F<='0';
					G<='1';
				when "0001" =>
					A<='1';
					B<='0';
					C<='0';
					D<='1';
					E<='1';
					F<='1';
					G<='1';
				when "0010" =>
					A<='0';
					B<='0';
					C<='1';
					D<='0';
					E<='0';
					F<='1';
					G<='0';
				when "0011" =>
					A<='0';
					B<='0';
					C<='0';
					D<='0';
					E<='1';
					F<='1';
					G<='0';
				when "0100" =>
					A<='1';
					B<='0';
					C<='0';
					D<='1';
					E<='1';
					F<='0';
					G<='0';
				when "0101" =>
					A<='0';
					B<='1';
					C<='0';
					D<='0';
					E<='1';
					F<='0';
					G<='0';
				when "0110" =>
					A<='0';
					B<='1';
					C<='0';
					D<='0';
					E<='0';
					F<='0';
					G<='0';
				when "0111" =>
					A<='0';
					B<='0';
					C<='0';
					D<='1';
					E<='1';
					F<='1';
					G<='1';
				when "1000" =>
					A<='0';
					B<='0';
					C<='0';
					D<='0';
					E<='0';
					F<='0';
					G<='0';
				when "1001" =>
					A<='0';
					B<='0';
					C<='0';
					D<='0';
					E<='1';
					F<='0';
					G<='0';
				when "1010" =>
					A<='0';
					B<='0';
					C<='0';
					D<='1';
					E<='0';
					F<='0';
					G<='0';
				when "1011" =>
					A<='1';
					B<='1';
					C<='0';
					D<='0';
					E<='0';
					F<='0';
					G<='0';
				when "1100" =>
					A<='0';
					B<='1';
					C<='1';
					D<='0';
					E<='0';
					F<='0';
					G<='1';
				when "1101" =>
					A<='1';
					B<='0';
					C<='0';
					D<='0';
					E<='0';
					F<='1';
					G<='0';
				when "1110" =>
					A<='0';
					B<='1';
					C<='1';
					D<='0';
					E<='0';
					F<='0';
					G<='0';
				when "1111" =>
					A<='0';
					B<='1';
					C<='1';
					D<='1';
					E<='0';
					F<='0';
					G<='0';
				end case;		
	end process;
end behav;