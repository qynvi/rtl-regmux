-- qynvi
-- 02/14/2011
-- Mux RTL

library ieee;
use ieee.std_logic_1164.all;

entity reg_mux is
	port (a, b, c, d: in std_logic_vector(3 downto 0);
		sel: in std_logic_vector(1 downto 0);
		clk: in std_logic;
		y: out std_logic_vector(3 downto 0));
end entity;

architecture reg_mux of reg_mux is
	signal x: std_logic_vector(3 downto 0);
begin
	x <= a when sel = "00" else
		 b when sel = "01" else
		 c when sel = "10" else
		 d;
	process (clk)
	begin
		if (clk'event and clk = '1') then
			y <= x;
		end if;
	end process;
end architecture;
