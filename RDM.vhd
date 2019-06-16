library ieee;
use ieee.std_logic_1164.all;

entity RDM is
	port(clk,rst,cargaRDM: in std_logic;
			rdm_in: in std_logic_vector(7 downto 0);
			rdm_out: out std_logic_vector(7 downto 0));
end RDM;

architecture comportamento of RDM is
signal rdmaux: std_logic_vector(7 downto 0) := "00000000";
begin
	process(clk,rst)
	begin
		if (rst = '1') then
			rdmaux <= "00000000";
		elsif (clk'event and clk = '1') then
			if (cargaRDM = '1') then
				rdmaux <= rdm_in;
			end if;
		end if;
	rdm_out <= rdmaux;
	end process;
end comportamento;