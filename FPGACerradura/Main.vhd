library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use WORK.FCV.all;

entity Main is

	port(
		--reset: in std_logic;
		clk: in std_logic;
		authHuella: in std_logic;
		btn1: in std_logic;
		btn2: in std_logic;
		btn3: in std_logic;
		btn4: in std_logic;
		Sensor_listo: in std_logic;
		beep: out std_logic;
		ledR: out std_logic;
		ledG: out std_logic;
		ledB: out std_logic;
		pwmServo: out std_logic;
		Arduino_on: out std_logic;
		Arduino_clave: out std_logic
		);
		
end Main;

architecture Main_arch of Main is

	signal colorLED: WORK.FCV.coloresLED;
	
	signal authClave: std_logic := '0';
	
	signal beepClk: std_logic;
	signal beepSound: std_logic;
	
	signal inBtn1: std_logic;
	signal inBtn2: std_logic;
	signal inBtn3: std_logic;
	signal inBtn4: std_logic;
	signal claveClk: std_logic;
	
	signal TempClk: std_logic;
	signal contar: std_logic;
	signal TimeDone: std_logic;
	signal SystemReset: std_logic;
	
	signal servoClk: std_logic;
	signal posServo: WORK.FCV.posicionesServo;
	
	component LED
		port(
			authHuella: in std_logic;
			authClave: in std_logic;
			Sensor_listo: in std_logic;
			colorLED: out WORK.FCV.coloresLED
			);
	end component;
	
	component CLAVE
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
	end component;
	
	component SERVO
		port(
			clk : in std_logic; --1MHz (1 clk cada micro segundo)
			posServo: in WORK.FCV.posicionesServo;
			pwm : out std_logic
		);	
	end component;
	
	component div_frec
		port(
			clk: in  std_logic;
			fDeseada: in integer; --dHz
			f: out std_logic
			);	
	end component;
	
	component Huella
		port(
		reset:in	std_logic;
		claveAuth: in std_logic;
		prendida: out std_logic;
		clave_on: out std_logic
		);
	end component;
	
	component Temporizador

		port(
			clk: in std_logic;  --clk de 1Hz
			contar: in std_logic;
			TimeDone: out std_logic 
			);
		
	end component;
	
	
	begin
	
		SystemReset <= TimeDone;
		
		clkTemporizador : div_frec port map(clk,10,TempClk);
		Reinicio: Temporizador port map(TempClk, contar, TimeDone);  
		contar <= '1' when posServo = abierto else '0';
	
		inBtn1 <= not btn1;
		inBtn2 <= not btn2;
		inBtn3 <= not btn3;
		inBtn4 <= not btn4;
		
		clkClave : div_frec port map(clk,40,claveClk);
		funcCLAVE : CLAVE port map(SystemReset,claveClk, inBtn1, inBtn2, inBtn3, inBtn4, Sensor_listo, beepSound, authClave);
		
		funcLED : LED port map(authHuella, authClave, Sensor_listo, colorLED);
		clkBeep : div_frec port map(clk,12500,beepClk);
		
		clkServo : div_frec port map(clk,10000000,servoClk);
		posServo <= abierto when (authHuella='1' and authClave='1') else cerrado;
		pwm : SERVO port map(servoClk,posServo,pwmServo);
		
		ledR <= '1' when colorLED=rojo or colorLED=amarillo or colorLED=morado or colorLED=blanco else '0';
		ledG <= '1' when colorLED=verde or colorLED=amarillo or colorLED=blanco else '0';
		ledB <= '1' when colorLED=azul or colorLED=morado or colorLED=blanco else '0';
		
		beep <= beepSound and beepClk;
		
		Arduino: Huella port map(SystemReset, authClave, Arduino_on, Arduino_clave);
		
end Main_arch;