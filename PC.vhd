library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity PC is
	port(clk,rst,incPC,cargaPC: in std_logic;
			pc_in: in std_logic_vector(7 downto 0);
			pc_out: out std_logic_vector(7 downto 0));
end PC;

architecture comportamento of PC is
signal pcaux: std_logic_vector(7 downto 0) := "00000000";
begin
	process(clk,rst)
	begin
		if (rst = '1') then
			pcaux <= "00000000";
		elsif (clk'event and clk = '1') then
			if (cargaPC = '1') then
				pcaux <= pc_in;
			elsif (incPC = '1') then
				 pcaux  <= pcaux + 1;
			end if;
		end if;
	pc_out <= pcaux;
	end process;
end comportamento;