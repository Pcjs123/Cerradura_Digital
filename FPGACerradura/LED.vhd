library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use WORK.FCV.all;

entity LED is

	port(
		authHuella: in std_logic;
		authClave: in std_logic;
		Sensor_listo: in std_logic;
		colorLED: out WORK.FCV.coloresLED
		);
		
end LED;

architecture LED_arch of LED is
	
	begin
		
		colorLED <= blanco when  (Sensor_listo='0') else
						verde when (authHuella='1' and authClave='1') else
						azul when (authClave='1') else
						rojo;

end LED_arch;