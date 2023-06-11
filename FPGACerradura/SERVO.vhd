library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use WORK.FCV.all;

entity SERVO is

	port(
		clk : in std_logic; --1MHz (1 clk cada micro segundo)
		posServo: in WORK.FCV.posicionesServo;
		pwm : out std_logic
	);
		
end SERVO;


architecture SERVO_arch of SERVO is

	signal salida: std_logic := '0';
	signal cuentaCiclo: integer := 1; 
	
	begin

	process(clk) 
	begin
		if rising_edge(clk) then 
			if cuentaCiclo = 20000 then --Ciclo de 20 ms
				cuentaCiclo <= 1;
			else
				cuentaCiclo <= cuentaCiclo + 1;
			end if;
			
			if posServo=abierto and cuentaCiclo <= 2300 then
				pwm <= '1';
			elsif posServo=cerrado and cuentaCiclo <= 1200 then
				pwm <= '1';
			else
				pwm <= '0';
			end if;
		end if;
	end process;
	
end SERVO_arch;