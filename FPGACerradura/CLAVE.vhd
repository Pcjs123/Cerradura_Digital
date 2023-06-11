library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use WORK.FCV.all;

entity CLAVE is
    port (
		 reset: in std_logic;
		 clk : in std_logic;
		 boton1: in std_logic;
		 boton2: in std_logic;
		 boton3: in std_logic;
		 boton4: in std_logic;
		 Sensor_listo: in std_logic;
		 beepSound: out std_logic;
		 salida: out std_logic);
end CLAVE;

architecture CLAVE_arch of CLAVE is

   signal clave_ingresada: WORK.FCV.int_array := (0,0,0,0,0,0);

	begin
	
	process (clk, boton1, boton2, boton3, boton4,reset,Sensor_listo)	
		begin
		if reset = '1' or Sensor_listo = '0' then
				clave_ingresada <= (0,0,0,0,0,0);
		elsif rising_edge (clk) then
			if boton1 = '1' then
				clave_ingresada <= clave_ingresada(1 to 5) & 1;
				beepSound <= '1';
			elsif boton2 = '1' then
				clave_ingresada <= clave_ingresada(1 to 5) & 2;
				beepSound <= '1';
			elsif boton3 = '1' then
				clave_ingresada <= clave_ingresada(1 to 5) & 3;
				beepSound <= '1';
			elsif boton4 = '1' then
				clave_ingresada <= clave_ingresada(1 to 5) & 4;
				beepSound <= '1';
			else
				beepSound <= '0';
			end if;
		end if;
	end process;
	
	salida <= '1' when clave_ingresada(0) = 1 and
							 clave_ingresada(1) = 2 and
							 clave_ingresada(2) = 3 and
							 clave_ingresada(3) = 4 and
							 clave_ingresada(4) = 4 and
							 clave_ingresada(5) = 4 
					  else '0';
end CLAVE_arch;