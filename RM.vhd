library ieee;
use ieee.std_logic_1164.all;

entity RM is
	port(clk,rst,cargaREM: in std_logic;
			rm_in: in std_logic_vector(7 downto 0);
			rm_out: out std_logic_vector(7 downto 0));
end RM;

architecture comportamento of RM is
signal rmaux: std_logic_vector(7 downto 0) := "00000000";
begin
	process(clk,rst)
	begin
		if rst = '1' then
			rmaux <= "00000000";
		elsif (clk'event and clk = '1') then
			if (cargaREM = '1') then
				rmaux <= rm_in;
			end if;
		end if;
	rm_out <= rmaux;
	end process;
end comportamento;