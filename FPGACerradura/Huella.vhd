library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use WORK.FCV.all;


entity Huella is

	port(
	reset:in	std_logic;
	claveAuth: in std_logic;
	prendida: out std_logic;
	clave_on: out std_logic
	);
		
end Huella;

architecture Huella_arch of Huella is

	begin
	
	prendida<='1';
	clave_on <= claveAuth;
	
end Huella_arch;