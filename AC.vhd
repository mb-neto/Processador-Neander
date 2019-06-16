library ieee;
use ieee.std_logic_1164.all;

entity AC is
	port(clk,rst,cargaAC: in std_logic;
			ac_in: in std_logic_vector(7 downto 0);
			ac_out: out std_logic_vector(7 downto 0));
end AC;

architecture comportamento of AC is
signal acaux: std_logic_vector(7 downto 0) := "00000000";
begin
	process(clk,rst)
	begin
		if (rst = '1') then
			acaux <= "00000000";
		elsif (clk'event and clk = '1') then
			if (cargaAC = '1') then
				acaux <= ac_in;
			end if;
		end if;
	ac_out <= acaux;
	end process;
end comportamento;