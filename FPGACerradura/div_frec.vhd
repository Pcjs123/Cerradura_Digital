library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity div_frec is

	port(
		clk: in  std_logic;
		fDeseada: in integer; --dHz
		f: out std_logic
		);
		
end div_frec;


architecture divisor of div_frec is

	signal salida: std_logic := '1';
	signal cuenta: integer := 1;
	
begin
	
	process(clk) 
	begin
		if rising_edge(clk) then
			if cuenta = (500000000)/(2*fDeseada) then
				cuenta <= 1;
				salida <= not salida;
			else
				cuenta <= cuenta + 1; 
			end if;
		end if;
	end process;
	
	f <= salida;

end divisor;