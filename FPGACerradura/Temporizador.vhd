library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use WORK.FCV.all;

entity Temporizador is

	port(
		clk: in std_logic;  --clk de 1Hz
		contar: in std_logic;
		TimeDone: out std_logic 
		);
		
end Temporizador;

architecture Temporizador_arch of Temporizador is

signal contador: integer:= 0;
	
	begin
	
	process (clk,contar)
	begin
		if contar = '0' then
			contador <= 0;
		elsif rising_edge(clk) then
			contador <= contador+1;
		end if;
	end process;
	
	TimeDone <= '1' when contador > 9 else '0';
		
end Temporizador_arch;