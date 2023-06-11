-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "05/31/2023 13:01:22"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Main IS
    PORT (
	clk : IN std_logic;
	authHuella : IN std_logic;
	btn1 : IN std_logic;
	btn2 : IN std_logic;
	btn3 : IN std_logic;
	btn4 : IN std_logic;
	Sensor_listo : IN std_logic;
	beep : BUFFER std_logic;
	ledR : BUFFER std_logic;
	ledG : BUFFER std_logic;
	ledB : BUFFER std_logic;
	pwmServo : BUFFER std_logic;
	Arduino_on : BUFFER std_logic;
	Arduino_clave : BUFFER std_logic
	);
END Main;

-- Design Ports Information
-- beep	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledR	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ledG	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ledB	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pwmServo	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Arduino_on	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Arduino_clave	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Sensor_listo	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- authHuella	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- btn4	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn1	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn2	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn3	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_authHuella : std_logic;
SIGNAL ww_btn1 : std_logic;
SIGNAL ww_btn2 : std_logic;
SIGNAL ww_btn3 : std_logic;
SIGNAL ww_btn4 : std_logic;
SIGNAL ww_Sensor_listo : std_logic;
SIGNAL ww_beep : std_logic;
SIGNAL ww_ledR : std_logic;
SIGNAL ww_ledG : std_logic;
SIGNAL ww_ledB : std_logic;
SIGNAL ww_pwmServo : std_logic;
SIGNAL ww_Arduino_on : std_logic;
SIGNAL ww_Arduino_clave : std_logic;
SIGNAL \clkServo|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkClave|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkTemporizador|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \beep~output_o\ : std_logic;
SIGNAL \ledR~output_o\ : std_logic;
SIGNAL \ledG~output_o\ : std_logic;
SIGNAL \ledB~output_o\ : std_logic;
SIGNAL \pwmServo~output_o\ : std_logic;
SIGNAL \Arduino_on~output_o\ : std_logic;
SIGNAL \Arduino_clave~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkBeep|Add0~0_combout\ : std_logic;
SIGNAL \clkBeep|cuenta[0]~5_combout\ : std_logic;
SIGNAL \clkBeep|Add0~1\ : std_logic;
SIGNAL \clkBeep|Add0~2_combout\ : std_logic;
SIGNAL \clkBeep|Add0~3\ : std_logic;
SIGNAL \clkBeep|Add0~4_combout\ : std_logic;
SIGNAL \clkBeep|Add0~5\ : std_logic;
SIGNAL \clkBeep|Add0~6_combout\ : std_logic;
SIGNAL \clkBeep|Equal0~0_combout\ : std_logic;
SIGNAL \clkClave|Add0~1_cout\ : std_logic;
SIGNAL \clkClave|Add0~3_cout\ : std_logic;
SIGNAL \clkClave|Add0~5_cout\ : std_logic;
SIGNAL \clkClave|Add0~6_combout\ : std_logic;
SIGNAL \clkClave|cuenta~11_combout\ : std_logic;
SIGNAL \clkClave|Add0~7\ : std_logic;
SIGNAL \clkClave|Add0~8_combout\ : std_logic;
SIGNAL \clkClave|Add0~9\ : std_logic;
SIGNAL \clkClave|Add0~10_combout\ : std_logic;
SIGNAL \clkClave|Add0~11\ : std_logic;
SIGNAL \clkClave|Add0~12_combout\ : std_logic;
SIGNAL \clkClave|Add0~13\ : std_logic;
SIGNAL \clkClave|Add0~14_combout\ : std_logic;
SIGNAL \clkClave|Add0~15\ : std_logic;
SIGNAL \clkClave|Add0~16_combout\ : std_logic;
SIGNAL \clkClave|cuenta~10_combout\ : std_logic;
SIGNAL \clkClave|Equal0~6_combout\ : std_logic;
SIGNAL \clkClave|Add0~17\ : std_logic;
SIGNAL \clkClave|Add0~18_combout\ : std_logic;
SIGNAL \clkClave|cuenta~9_combout\ : std_logic;
SIGNAL \clkClave|Add0~19\ : std_logic;
SIGNAL \clkClave|Add0~20_combout\ : std_logic;
SIGNAL \clkClave|cuenta~8_combout\ : std_logic;
SIGNAL \clkClave|Add0~21\ : std_logic;
SIGNAL \clkClave|Add0~22_combout\ : std_logic;
SIGNAL \clkClave|cuenta~7_combout\ : std_logic;
SIGNAL \clkClave|Add0~23\ : std_logic;
SIGNAL \clkClave|Add0~24_combout\ : std_logic;
SIGNAL \clkClave|Equal0~5_combout\ : std_logic;
SIGNAL \clkClave|Add0~45\ : std_logic;
SIGNAL \clkClave|Add0~46_combout\ : std_logic;
SIGNAL \clkClave|Add0~47\ : std_logic;
SIGNAL \clkClave|Add0~48_combout\ : std_logic;
SIGNAL \clkClave|Add0~49\ : std_logic;
SIGNAL \clkClave|Add0~50_combout\ : std_logic;
SIGNAL \clkClave|Add0~51\ : std_logic;
SIGNAL \clkClave|Add0~52_combout\ : std_logic;
SIGNAL \clkClave|Add0~53\ : std_logic;
SIGNAL \clkClave|Add0~54_combout\ : std_logic;
SIGNAL \clkClave|Add0~55\ : std_logic;
SIGNAL \clkClave|Add0~56_combout\ : std_logic;
SIGNAL \clkClave|Add0~57\ : std_logic;
SIGNAL \clkClave|Add0~58_combout\ : std_logic;
SIGNAL \clkClave|Add0~59\ : std_logic;
SIGNAL \clkClave|Add0~60_combout\ : std_logic;
SIGNAL \clkClave|Equal0~7_combout\ : std_logic;
SIGNAL \clkClave|Add0~25\ : std_logic;
SIGNAL \clkClave|Add0~26_combout\ : std_logic;
SIGNAL \clkClave|cuenta~6_combout\ : std_logic;
SIGNAL \clkClave|Add0~27\ : std_logic;
SIGNAL \clkClave|Add0~28_combout\ : std_logic;
SIGNAL \clkClave|Add0~29\ : std_logic;
SIGNAL \clkClave|Add0~30_combout\ : std_logic;
SIGNAL \clkClave|cuenta~5_combout\ : std_logic;
SIGNAL \clkClave|Add0~31\ : std_logic;
SIGNAL \clkClave|Add0~32_combout\ : std_logic;
SIGNAL \clkClave|cuenta~4_combout\ : std_logic;
SIGNAL \clkClave|Equal0~4_combout\ : std_logic;
SIGNAL \clkClave|Equal0~8_combout\ : std_logic;
SIGNAL \clkClave|Add0~33\ : std_logic;
SIGNAL \clkClave|Add0~34_combout\ : std_logic;
SIGNAL \clkClave|cuenta~3_combout\ : std_logic;
SIGNAL \clkClave|Add0~35\ : std_logic;
SIGNAL \clkClave|Add0~36_combout\ : std_logic;
SIGNAL \clkClave|cuenta~2_combout\ : std_logic;
SIGNAL \clkClave|Add0~37\ : std_logic;
SIGNAL \clkClave|Add0~38_combout\ : std_logic;
SIGNAL \clkClave|cuenta~1_combout\ : std_logic;
SIGNAL \clkClave|Add0~39\ : std_logic;
SIGNAL \clkClave|Add0~40_combout\ : std_logic;
SIGNAL \clkClave|Add0~41\ : std_logic;
SIGNAL \clkClave|Add0~42_combout\ : std_logic;
SIGNAL \clkClave|cuenta~0_combout\ : std_logic;
SIGNAL \clkClave|Add0~43\ : std_logic;
SIGNAL \clkClave|Add0~44_combout\ : std_logic;
SIGNAL \clkClave|Equal0~1_combout\ : std_logic;
SIGNAL \clkClave|Equal0~2_combout\ : std_logic;
SIGNAL \clkClave|Equal0~0_combout\ : std_logic;
SIGNAL \clkClave|Equal0~3_combout\ : std_logic;
SIGNAL \clkClave|salida~0_combout\ : std_logic;
SIGNAL \clkClave|salida~feeder_combout\ : std_logic;
SIGNAL \clkClave|salida~q\ : std_logic;
SIGNAL \clkClave|salida~clkctrl_outclk\ : std_logic;
SIGNAL \btn3~input_o\ : std_logic;
SIGNAL \btn2~input_o\ : std_logic;
SIGNAL \btn1~input_o\ : std_logic;
SIGNAL \btn4~input_o\ : std_logic;
SIGNAL \funcCLAVE|beepSound~0_combout\ : std_logic;
SIGNAL \Sensor_listo~input_o\ : std_logic;
SIGNAL \clkBeep|Add0~7\ : std_logic;
SIGNAL \clkBeep|Add0~8_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~1_cout\ : std_logic;
SIGNAL \clkTemporizador|Add0~3_cout\ : std_logic;
SIGNAL \clkTemporizador|Add0~5_cout\ : std_logic;
SIGNAL \clkTemporizador|Add0~7_cout\ : std_logic;
SIGNAL \clkTemporizador|Add0~8_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~45\ : std_logic;
SIGNAL \clkTemporizador|Add0~46_combout\ : std_logic;
SIGNAL \clkTemporizador|cuenta~0_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~47\ : std_logic;
SIGNAL \clkTemporizador|Add0~48_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~49\ : std_logic;
SIGNAL \clkTemporizador|Add0~50_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~51\ : std_logic;
SIGNAL \clkTemporizador|Add0~52_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~53\ : std_logic;
SIGNAL \clkTemporizador|Add0~54_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~55\ : std_logic;
SIGNAL \clkTemporizador|Add0~56_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~57\ : std_logic;
SIGNAL \clkTemporizador|Add0~58_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~59\ : std_logic;
SIGNAL \clkTemporizador|Add0~60_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~9\ : std_logic;
SIGNAL \clkTemporizador|Add0~10_combout\ : std_logic;
SIGNAL \clkTemporizador|cuenta~11_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~11\ : std_logic;
SIGNAL \clkTemporizador|Add0~12_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~13\ : std_logic;
SIGNAL \clkTemporizador|Add0~14_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~15\ : std_logic;
SIGNAL \clkTemporizador|Add0~16_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~17\ : std_logic;
SIGNAL \clkTemporizador|Add0~18_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~19\ : std_logic;
SIGNAL \clkTemporizador|Add0~20_combout\ : std_logic;
SIGNAL \clkTemporizador|cuenta~10_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~21\ : std_logic;
SIGNAL \clkTemporizador|Add0~22_combout\ : std_logic;
SIGNAL \clkTemporizador|cuenta~9_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~23\ : std_logic;
SIGNAL \clkTemporizador|Add0~24_combout\ : std_logic;
SIGNAL \clkTemporizador|cuenta~8_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~25\ : std_logic;
SIGNAL \clkTemporizador|Add0~26_combout\ : std_logic;
SIGNAL \clkTemporizador|cuenta~7_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~27\ : std_logic;
SIGNAL \clkTemporizador|Add0~28_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~29\ : std_logic;
SIGNAL \clkTemporizador|Add0~30_combout\ : std_logic;
SIGNAL \clkTemporizador|cuenta~6_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~31\ : std_logic;
SIGNAL \clkTemporizador|Add0~32_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~33\ : std_logic;
SIGNAL \clkTemporizador|Add0~34_combout\ : std_logic;
SIGNAL \clkTemporizador|cuenta~5_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~35\ : std_logic;
SIGNAL \clkTemporizador|Add0~36_combout\ : std_logic;
SIGNAL \clkTemporizador|cuenta~4_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~37\ : std_logic;
SIGNAL \clkTemporizador|Add0~38_combout\ : std_logic;
SIGNAL \clkTemporizador|cuenta~3_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~39\ : std_logic;
SIGNAL \clkTemporizador|Add0~40_combout\ : std_logic;
SIGNAL \clkTemporizador|cuenta~2_combout\ : std_logic;
SIGNAL \clkTemporizador|Equal0~3_combout\ : std_logic;
SIGNAL \clkTemporizador|Equal0~4_combout\ : std_logic;
SIGNAL \clkTemporizador|Equal0~5_combout\ : std_logic;
SIGNAL \clkTemporizador|Equal0~6_combout\ : std_logic;
SIGNAL \clkTemporizador|Equal0~7_combout\ : std_logic;
SIGNAL \clkTemporizador|Equal0~8_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~41\ : std_logic;
SIGNAL \clkTemporizador|Add0~42_combout\ : std_logic;
SIGNAL \clkTemporizador|cuenta~1_combout\ : std_logic;
SIGNAL \clkTemporizador|Add0~43\ : std_logic;
SIGNAL \clkTemporizador|Add0~44_combout\ : std_logic;
SIGNAL \clkTemporizador|Equal0~1_combout\ : std_logic;
SIGNAL \clkTemporizador|Equal0~0_combout\ : std_logic;
SIGNAL \clkTemporizador|Equal0~2_combout\ : std_logic;
SIGNAL \clkTemporizador|salida~0_combout\ : std_logic;
SIGNAL \clkTemporizador|salida~q\ : std_logic;
SIGNAL \clkTemporizador|salida~clkctrl_outclk\ : std_logic;
SIGNAL \Reinicio|contador[0]~93_combout\ : std_logic;
SIGNAL \authHuella~input_o\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada~1_combout\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[5][0]~q\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada~0_combout\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[5][1]~q\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada~2_combout\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[5][2]~q\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[4][2]~q\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[3][2]~feeder_combout\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[3][2]~q\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[2][2]~feeder_combout\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[2][2]~q\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[1][2]~q\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[4][0]~feeder_combout\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[4][0]~q\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[3][0]~feeder_combout\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[3][0]~q\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[2][0]~feeder_combout\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[2][0]~q\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[1][0]~feeder_combout\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[1][0]~q\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[0][0]~feeder_combout\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[0][0]~q\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[4][1]~feeder_combout\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[4][1]~q\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[3][1]~feeder_combout\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[3][1]~q\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[2][1]~q\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[1][1]~feeder_combout\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[1][1]~q\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[0][1]~q\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[0][2]~feeder_combout\ : std_logic;
SIGNAL \funcCLAVE|clave_ingresada[0][2]~q\ : std_logic;
SIGNAL \funcCLAVE|salida~0_combout\ : std_logic;
SIGNAL \funcCLAVE|salida~3_combout\ : std_logic;
SIGNAL \funcCLAVE|salida~2_combout\ : std_logic;
SIGNAL \funcCLAVE|salida~1_combout\ : std_logic;
SIGNAL \funcCLAVE|salida~4_combout\ : std_logic;
SIGNAL \ledG~0_combout\ : std_logic;
SIGNAL \Reinicio|contador[1]~31_combout\ : std_logic;
SIGNAL \Reinicio|contador[1]~32\ : std_logic;
SIGNAL \Reinicio|contador[2]~33_combout\ : std_logic;
SIGNAL \Reinicio|contador[2]~34\ : std_logic;
SIGNAL \Reinicio|contador[3]~35_combout\ : std_logic;
SIGNAL \Reinicio|contador[3]~36\ : std_logic;
SIGNAL \Reinicio|contador[4]~37_combout\ : std_logic;
SIGNAL \Reinicio|contador[4]~38\ : std_logic;
SIGNAL \Reinicio|contador[5]~39_combout\ : std_logic;
SIGNAL \Reinicio|contador[5]~40\ : std_logic;
SIGNAL \Reinicio|contador[6]~41_combout\ : std_logic;
SIGNAL \Reinicio|contador[6]~42\ : std_logic;
SIGNAL \Reinicio|contador[7]~43_combout\ : std_logic;
SIGNAL \Reinicio|contador[7]~44\ : std_logic;
SIGNAL \Reinicio|contador[8]~45_combout\ : std_logic;
SIGNAL \Reinicio|contador[8]~46\ : std_logic;
SIGNAL \Reinicio|contador[9]~47_combout\ : std_logic;
SIGNAL \Reinicio|contador[9]~48\ : std_logic;
SIGNAL \Reinicio|contador[10]~49_combout\ : std_logic;
SIGNAL \Reinicio|contador[10]~50\ : std_logic;
SIGNAL \Reinicio|contador[11]~51_combout\ : std_logic;
SIGNAL \Reinicio|contador[11]~52\ : std_logic;
SIGNAL \Reinicio|contador[12]~53_combout\ : std_logic;
SIGNAL \Reinicio|contador[12]~54\ : std_logic;
SIGNAL \Reinicio|contador[13]~55_combout\ : std_logic;
SIGNAL \Reinicio|contador[13]~56\ : std_logic;
SIGNAL \Reinicio|contador[14]~57_combout\ : std_logic;
SIGNAL \Reinicio|contador[14]~58\ : std_logic;
SIGNAL \Reinicio|contador[15]~59_combout\ : std_logic;
SIGNAL \Reinicio|contador[15]~60\ : std_logic;
SIGNAL \Reinicio|contador[16]~61_combout\ : std_logic;
SIGNAL \Reinicio|contador[16]~62\ : std_logic;
SIGNAL \Reinicio|contador[17]~63_combout\ : std_logic;
SIGNAL \Reinicio|contador[17]~64\ : std_logic;
SIGNAL \Reinicio|contador[18]~65_combout\ : std_logic;
SIGNAL \Reinicio|contador[18]~66\ : std_logic;
SIGNAL \Reinicio|contador[19]~67_combout\ : std_logic;
SIGNAL \Reinicio|contador[19]~68\ : std_logic;
SIGNAL \Reinicio|contador[20]~69_combout\ : std_logic;
SIGNAL \Reinicio|contador[20]~70\ : std_logic;
SIGNAL \Reinicio|contador[21]~71_combout\ : std_logic;
SIGNAL \Reinicio|contador[21]~72\ : std_logic;
SIGNAL \Reinicio|contador[22]~73_combout\ : std_logic;
SIGNAL \Reinicio|contador[22]~74\ : std_logic;
SIGNAL \Reinicio|contador[23]~75_combout\ : std_logic;
SIGNAL \Reinicio|contador[23]~76\ : std_logic;
SIGNAL \Reinicio|contador[24]~77_combout\ : std_logic;
SIGNAL \Reinicio|contador[24]~78\ : std_logic;
SIGNAL \Reinicio|contador[25]~79_combout\ : std_logic;
SIGNAL \Reinicio|contador[25]~80\ : std_logic;
SIGNAL \Reinicio|contador[26]~81_combout\ : std_logic;
SIGNAL \Reinicio|contador[26]~82\ : std_logic;
SIGNAL \Reinicio|contador[27]~83_combout\ : std_logic;
SIGNAL \Reinicio|contador[27]~84\ : std_logic;
SIGNAL \Reinicio|contador[28]~85_combout\ : std_logic;
SIGNAL \Reinicio|contador[28]~86\ : std_logic;
SIGNAL \Reinicio|contador[29]~87_combout\ : std_logic;
SIGNAL \Reinicio|contador[29]~88\ : std_logic;
SIGNAL \Reinicio|contador[30]~89_combout\ : std_logic;
SIGNAL \Reinicio|contador[30]~90\ : std_logic;
SIGNAL \Reinicio|contador[31]~91_combout\ : std_logic;
SIGNAL \Reinicio|LessThan0~0_combout\ : std_logic;
SIGNAL \Reinicio|LessThan0~2_combout\ : std_logic;
SIGNAL \Reinicio|LessThan0~3_combout\ : std_logic;
SIGNAL \Reinicio|LessThan0~1_combout\ : std_logic;
SIGNAL \Reinicio|LessThan0~4_combout\ : std_logic;
SIGNAL \Reinicio|LessThan0~6_combout\ : std_logic;
SIGNAL \Reinicio|LessThan0~5_combout\ : std_logic;
SIGNAL \Reinicio|LessThan0~8_combout\ : std_logic;
SIGNAL \Reinicio|LessThan0~7_combout\ : std_logic;
SIGNAL \Reinicio|LessThan0~9_combout\ : std_logic;
SIGNAL \funcCLAVE|process_0~0_combout\ : std_logic;
SIGNAL \funcCLAVE|beepSound~1_combout\ : std_logic;
SIGNAL \funcCLAVE|beepSound~q\ : std_logic;
SIGNAL \clkBeep|Add0~39\ : std_logic;
SIGNAL \clkBeep|Add0~40_combout\ : std_logic;
SIGNAL \clkBeep|Add0~41\ : std_logic;
SIGNAL \clkBeep|Add0~42_combout\ : std_logic;
SIGNAL \clkBeep|Add0~43\ : std_logic;
SIGNAL \clkBeep|Add0~44_combout\ : std_logic;
SIGNAL \clkBeep|Add0~45\ : std_logic;
SIGNAL \clkBeep|Add0~46_combout\ : std_logic;
SIGNAL \clkBeep|Add0~47\ : std_logic;
SIGNAL \clkBeep|Add0~48_combout\ : std_logic;
SIGNAL \clkBeep|Add0~49\ : std_logic;
SIGNAL \clkBeep|Add0~50_combout\ : std_logic;
SIGNAL \clkBeep|Equal0~2_combout\ : std_logic;
SIGNAL \clkBeep|Add0~51\ : std_logic;
SIGNAL \clkBeep|Add0~52_combout\ : std_logic;
SIGNAL \clkBeep|Add0~53\ : std_logic;
SIGNAL \clkBeep|Add0~54_combout\ : std_logic;
SIGNAL \clkBeep|Add0~55\ : std_logic;
SIGNAL \clkBeep|Add0~56_combout\ : std_logic;
SIGNAL \clkBeep|Add0~57\ : std_logic;
SIGNAL \clkBeep|Add0~58_combout\ : std_logic;
SIGNAL \clkBeep|Equal0~1_combout\ : std_logic;
SIGNAL \clkBeep|Equal0~3_combout\ : std_logic;
SIGNAL \clkBeep|Add0~9\ : std_logic;
SIGNAL \clkBeep|Add0~10_combout\ : std_logic;
SIGNAL \clkBeep|cuenta~0_combout\ : std_logic;
SIGNAL \clkBeep|Add0~59\ : std_logic;
SIGNAL \clkBeep|Add0~60_combout\ : std_logic;
SIGNAL \clkBeep|Add0~61\ : std_logic;
SIGNAL \clkBeep|Add0~62_combout\ : std_logic;
SIGNAL \clkBeep|Equal0~4_combout\ : std_logic;
SIGNAL \clkBeep|Add0~11\ : std_logic;
SIGNAL \clkBeep|Add0~12_combout\ : std_logic;
SIGNAL \clkBeep|Add0~13\ : std_logic;
SIGNAL \clkBeep|Add0~14_combout\ : std_logic;
SIGNAL \clkBeep|Add0~15\ : std_logic;
SIGNAL \clkBeep|Add0~16_combout\ : std_logic;
SIGNAL \clkBeep|Add0~17\ : std_logic;
SIGNAL \clkBeep|Add0~18_combout\ : std_logic;
SIGNAL \clkBeep|cuenta~4_combout\ : std_logic;
SIGNAL \clkBeep|Add0~19\ : std_logic;
SIGNAL \clkBeep|Add0~20_combout\ : std_logic;
SIGNAL \clkBeep|cuenta~3_combout\ : std_logic;
SIGNAL \clkBeep|Add0~21\ : std_logic;
SIGNAL \clkBeep|Add0~22_combout\ : std_logic;
SIGNAL \clkBeep|cuenta~2_combout\ : std_logic;
SIGNAL \clkBeep|Add0~23\ : std_logic;
SIGNAL \clkBeep|Add0~24_combout\ : std_logic;
SIGNAL \clkBeep|Add0~25\ : std_logic;
SIGNAL \clkBeep|Add0~26_combout\ : std_logic;
SIGNAL \clkBeep|Add0~27\ : std_logic;
SIGNAL \clkBeep|Add0~28_combout\ : std_logic;
SIGNAL \clkBeep|cuenta~1_combout\ : std_logic;
SIGNAL \clkBeep|Add0~29\ : std_logic;
SIGNAL \clkBeep|Add0~30_combout\ : std_logic;
SIGNAL \clkBeep|Add0~31\ : std_logic;
SIGNAL \clkBeep|Add0~32_combout\ : std_logic;
SIGNAL \clkBeep|Add0~33\ : std_logic;
SIGNAL \clkBeep|Add0~34_combout\ : std_logic;
SIGNAL \clkBeep|Add0~35\ : std_logic;
SIGNAL \clkBeep|Add0~36_combout\ : std_logic;
SIGNAL \clkBeep|Add0~37\ : std_logic;
SIGNAL \clkBeep|Add0~38_combout\ : std_logic;
SIGNAL \clkBeep|Equal0~5_combout\ : std_logic;
SIGNAL \clkBeep|Equal0~7_combout\ : std_logic;
SIGNAL \clkBeep|Equal0~8_combout\ : std_logic;
SIGNAL \clkBeep|Equal0~6_combout\ : std_logic;
SIGNAL \clkBeep|Equal0~9_combout\ : std_logic;
SIGNAL \clkBeep|salida~0_combout\ : std_logic;
SIGNAL \clkBeep|salida~q\ : std_logic;
SIGNAL \beep~0_combout\ : std_logic;
SIGNAL \ledR~0_combout\ : std_logic;
SIGNAL \ledG~1_combout\ : std_logic;
SIGNAL \funcCLAVE|salida~combout\ : std_logic;
SIGNAL \ledB~0_combout\ : std_logic;
SIGNAL \clkServo|Add0~19\ : std_logic;
SIGNAL \clkServo|Add0~20_combout\ : std_logic;
SIGNAL \clkServo|Add0~21\ : std_logic;
SIGNAL \clkServo|Add0~22_combout\ : std_logic;
SIGNAL \clkServo|Add0~23\ : std_logic;
SIGNAL \clkServo|Add0~24_combout\ : std_logic;
SIGNAL \clkServo|Add0~25\ : std_logic;
SIGNAL \clkServo|Add0~26_combout\ : std_logic;
SIGNAL \clkServo|Add0~27\ : std_logic;
SIGNAL \clkServo|Add0~28_combout\ : std_logic;
SIGNAL \clkServo|Add0~29\ : std_logic;
SIGNAL \clkServo|Add0~30_combout\ : std_logic;
SIGNAL \clkServo|Add0~31\ : std_logic;
SIGNAL \clkServo|Add0~32_combout\ : std_logic;
SIGNAL \clkServo|Add0~33\ : std_logic;
SIGNAL \clkServo|Add0~34_combout\ : std_logic;
SIGNAL \clkServo|Add0~35\ : std_logic;
SIGNAL \clkServo|Add0~36_combout\ : std_logic;
SIGNAL \clkServo|Add0~37\ : std_logic;
SIGNAL \clkServo|Add0~38_combout\ : std_logic;
SIGNAL \clkServo|Add0~39\ : std_logic;
SIGNAL \clkServo|Add0~40_combout\ : std_logic;
SIGNAL \clkServo|Add0~41\ : std_logic;
SIGNAL \clkServo|Add0~42_combout\ : std_logic;
SIGNAL \clkServo|Add0~43\ : std_logic;
SIGNAL \clkServo|Add0~44_combout\ : std_logic;
SIGNAL \clkServo|Add0~45\ : std_logic;
SIGNAL \clkServo|Add0~46_combout\ : std_logic;
SIGNAL \clkServo|Add0~47\ : std_logic;
SIGNAL \clkServo|Add0~48_combout\ : std_logic;
SIGNAL \clkServo|Add0~49\ : std_logic;
SIGNAL \clkServo|Add0~50_combout\ : std_logic;
SIGNAL \clkServo|Equal0~1_combout\ : std_logic;
SIGNAL \clkServo|Equal0~3_combout\ : std_logic;
SIGNAL \clkServo|Add0~51\ : std_logic;
SIGNAL \clkServo|Add0~52_combout\ : std_logic;
SIGNAL \clkServo|Add0~53\ : std_logic;
SIGNAL \clkServo|Add0~54_combout\ : std_logic;
SIGNAL \clkServo|Add0~55\ : std_logic;
SIGNAL \clkServo|Add0~56_combout\ : std_logic;
SIGNAL \clkServo|Add0~57\ : std_logic;
SIGNAL \clkServo|Add0~58_combout\ : std_logic;
SIGNAL \clkServo|Equal0~0_combout\ : std_logic;
SIGNAL \clkServo|Equal0~2_combout\ : std_logic;
SIGNAL \clkServo|Equal0~4_combout\ : std_logic;
SIGNAL \clkServo|Add0~0_combout\ : std_logic;
SIGNAL \clkServo|cuenta~3_combout\ : std_logic;
SIGNAL \clkServo|Add0~1\ : std_logic;
SIGNAL \clkServo|Add0~2_combout\ : std_logic;
SIGNAL \clkServo|cuenta~2_combout\ : std_logic;
SIGNAL \clkServo|Add0~3\ : std_logic;
SIGNAL \clkServo|Add0~4_combout\ : std_logic;
SIGNAL \clkServo|Add0~5\ : std_logic;
SIGNAL \clkServo|Add0~6_combout\ : std_logic;
SIGNAL \clkServo|cuenta~1_combout\ : std_logic;
SIGNAL \clkServo|Add0~7\ : std_logic;
SIGNAL \clkServo|Add0~8_combout\ : std_logic;
SIGNAL \clkServo|cuenta~0_combout\ : std_logic;
SIGNAL \clkServo|Add0~9\ : std_logic;
SIGNAL \clkServo|Add0~10_combout\ : std_logic;
SIGNAL \clkServo|Add0~11\ : std_logic;
SIGNAL \clkServo|Add0~12_combout\ : std_logic;
SIGNAL \clkServo|Add0~13\ : std_logic;
SIGNAL \clkServo|Add0~14_combout\ : std_logic;
SIGNAL \clkServo|Add0~15\ : std_logic;
SIGNAL \clkServo|Add0~16_combout\ : std_logic;
SIGNAL \clkServo|Add0~17\ : std_logic;
SIGNAL \clkServo|Add0~18_combout\ : std_logic;
SIGNAL \clkServo|Equal0~6_combout\ : std_logic;
SIGNAL \clkServo|Equal0~5_combout\ : std_logic;
SIGNAL \clkServo|Equal0~7_combout\ : std_logic;
SIGNAL \clkServo|Add0~59\ : std_logic;
SIGNAL \clkServo|Add0~60_combout\ : std_logic;
SIGNAL \clkServo|Add0~61\ : std_logic;
SIGNAL \clkServo|Add0~62_combout\ : std_logic;
SIGNAL \clkServo|Equal0~8_combout\ : std_logic;
SIGNAL \clkServo|Equal0~9_combout\ : std_logic;
SIGNAL \clkServo|salida~0_combout\ : std_logic;
SIGNAL \clkServo|salida~feeder_combout\ : std_logic;
SIGNAL \clkServo|salida~q\ : std_logic;
SIGNAL \clkServo|salida~clkctrl_outclk\ : std_logic;
SIGNAL \pwm|Add0~0_combout\ : std_logic;
SIGNAL \pwm|cuentaCiclo[0]~5_combout\ : std_logic;
SIGNAL \pwm|Add0~1\ : std_logic;
SIGNAL \pwm|Add0~2_combout\ : std_logic;
SIGNAL \pwm|Add0~3\ : std_logic;
SIGNAL \pwm|Add0~4_combout\ : std_logic;
SIGNAL \pwm|Add0~5\ : std_logic;
SIGNAL \pwm|Add0~6_combout\ : std_logic;
SIGNAL \pwm|Add0~7\ : std_logic;
SIGNAL \pwm|Add0~8_combout\ : std_logic;
SIGNAL \pwm|Add0~9\ : std_logic;
SIGNAL \pwm|Add0~10_combout\ : std_logic;
SIGNAL \pwm|cuentaCiclo~3_combout\ : std_logic;
SIGNAL \pwm|Add0~11\ : std_logic;
SIGNAL \pwm|Add0~12_combout\ : std_logic;
SIGNAL \pwm|Add0~13\ : std_logic;
SIGNAL \pwm|Add0~14_combout\ : std_logic;
SIGNAL \pwm|Equal0~7_combout\ : std_logic;
SIGNAL \pwm|Add0~15\ : std_logic;
SIGNAL \pwm|Add0~16_combout\ : std_logic;
SIGNAL \pwm|Add0~17\ : std_logic;
SIGNAL \pwm|Add0~18_combout\ : std_logic;
SIGNAL \pwm|cuentaCiclo~2_combout\ : std_logic;
SIGNAL \pwm|Add0~19\ : std_logic;
SIGNAL \pwm|Add0~20_combout\ : std_logic;
SIGNAL \pwm|cuentaCiclo~1_combout\ : std_logic;
SIGNAL \pwm|Add0~21\ : std_logic;
SIGNAL \pwm|Add0~22_combout\ : std_logic;
SIGNAL \pwm|cuentaCiclo~0_combout\ : std_logic;
SIGNAL \pwm|Add0~23\ : std_logic;
SIGNAL \pwm|Add0~24_combout\ : std_logic;
SIGNAL \pwm|Add0~25\ : std_logic;
SIGNAL \pwm|Add0~26_combout\ : std_logic;
SIGNAL \pwm|Equal0~1_combout\ : std_logic;
SIGNAL \pwm|Equal0~3_combout\ : std_logic;
SIGNAL \pwm|Equal0~2_combout\ : std_logic;
SIGNAL \pwm|Equal0~4_combout\ : std_logic;
SIGNAL \pwm|Equal0~5_combout\ : std_logic;
SIGNAL \pwm|Equal0~6_combout\ : std_logic;
SIGNAL \pwm|Equal0~8_combout\ : std_logic;
SIGNAL \pwm|Equal0~9_combout\ : std_logic;
SIGNAL \pwm|Equal0~0_combout\ : std_logic;
SIGNAL \pwm|Equal0~10_combout\ : std_logic;
SIGNAL \pwm|Add0~27\ : std_logic;
SIGNAL \pwm|Add0~28_combout\ : std_logic;
SIGNAL \pwm|cuentaCiclo~4_combout\ : std_logic;
SIGNAL \pwm|Add0~29\ : std_logic;
SIGNAL \pwm|Add0~30_combout\ : std_logic;
SIGNAL \pwm|Add0~31\ : std_logic;
SIGNAL \pwm|Add0~32_combout\ : std_logic;
SIGNAL \pwm|Add0~33\ : std_logic;
SIGNAL \pwm|Add0~34_combout\ : std_logic;
SIGNAL \pwm|Add0~35\ : std_logic;
SIGNAL \pwm|Add0~36_combout\ : std_logic;
SIGNAL \pwm|Add0~37\ : std_logic;
SIGNAL \pwm|Add0~38_combout\ : std_logic;
SIGNAL \pwm|Add0~39\ : std_logic;
SIGNAL \pwm|Add0~40_combout\ : std_logic;
SIGNAL \pwm|Add0~41\ : std_logic;
SIGNAL \pwm|Add0~42_combout\ : std_logic;
SIGNAL \pwm|Add0~43\ : std_logic;
SIGNAL \pwm|Add0~44_combout\ : std_logic;
SIGNAL \pwm|Add0~45\ : std_logic;
SIGNAL \pwm|Add0~46_combout\ : std_logic;
SIGNAL \pwm|Add0~47\ : std_logic;
SIGNAL \pwm|Add0~48_combout\ : std_logic;
SIGNAL \pwm|Add0~49\ : std_logic;
SIGNAL \pwm|Add0~50_combout\ : std_logic;
SIGNAL \pwm|Add0~51\ : std_logic;
SIGNAL \pwm|Add0~52_combout\ : std_logic;
SIGNAL \pwm|Add0~53\ : std_logic;
SIGNAL \pwm|Add0~54_combout\ : std_logic;
SIGNAL \pwm|Add0~55\ : std_logic;
SIGNAL \pwm|Add0~56_combout\ : std_logic;
SIGNAL \pwm|Add0~57\ : std_logic;
SIGNAL \pwm|Add0~58_combout\ : std_logic;
SIGNAL \pwm|Add0~59\ : std_logic;
SIGNAL \pwm|Add0~60_combout\ : std_logic;
SIGNAL \pwm|Add0~61\ : std_logic;
SIGNAL \pwm|Add0~62_combout\ : std_logic;
SIGNAL \pwm|pwm~8_combout\ : std_logic;
SIGNAL \pwm|pwm~9_combout\ : std_logic;
SIGNAL \pwm|pwm~10_combout\ : std_logic;
SIGNAL \pwm|pwm~3_combout\ : std_logic;
SIGNAL \pwm|pwm~1_combout\ : std_logic;
SIGNAL \pwm|pwm~4_combout\ : std_logic;
SIGNAL \pwm|pwm~0_combout\ : std_logic;
SIGNAL \pwm|pwm~2_combout\ : std_logic;
SIGNAL \pwm|pwm~5_combout\ : std_logic;
SIGNAL \pwm|pwm~6_combout\ : std_logic;
SIGNAL \pwm|pwm~7_combout\ : std_logic;
SIGNAL \pwm|pwm~11_combout\ : std_logic;
SIGNAL \pwm|pwm~q\ : std_logic;
SIGNAL \pwm|cuentaCiclo\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Reinicio|contador\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clkBeep|cuenta\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clkServo|cuenta\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clkClave|cuenta\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clkTemporizador|cuenta\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clkTemporizador|ALT_INV_salida~clkctrl_outclk\ : std_logic;
SIGNAL \clkClave|ALT_INV_salida~clkctrl_outclk\ : std_logic;
SIGNAL \clkServo|ALT_INV_salida~clkctrl_outclk\ : std_logic;
SIGNAL \funcCLAVE|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_ledG~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_authHuella <= authHuella;
ww_btn1 <= btn1;
ww_btn2 <= btn2;
ww_btn3 <= btn3;
ww_btn4 <= btn4;
ww_Sensor_listo <= Sensor_listo;
beep <= ww_beep;
ledR <= ww_ledR;
ledG <= ww_ledG;
ledB <= ww_ledB;
pwmServo <= ww_pwmServo;
Arduino_on <= ww_Arduino_on;
Arduino_clave <= ww_Arduino_clave;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clkServo|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkServo|salida~q\);

\clkClave|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkClave|salida~q\);

\clkTemporizador|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkTemporizador|salida~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\clkTemporizador|ALT_INV_salida~clkctrl_outclk\ <= NOT \clkTemporizador|salida~clkctrl_outclk\;
\clkClave|ALT_INV_salida~clkctrl_outclk\ <= NOT \clkClave|salida~clkctrl_outclk\;
\clkServo|ALT_INV_salida~clkctrl_outclk\ <= NOT \clkServo|salida~clkctrl_outclk\;
\funcCLAVE|ALT_INV_process_0~0_combout\ <= NOT \funcCLAVE|process_0~0_combout\;
\ALT_INV_ledG~0_combout\ <= NOT \ledG~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y24_N2
\beep~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \beep~0_combout\,
	devoe => ww_devoe,
	o => \beep~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\ledR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledR~0_combout\,
	devoe => ww_devoe,
	o => \ledR~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\ledG~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledG~1_combout\,
	devoe => ww_devoe,
	o => \ledG~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\ledB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledB~0_combout\,
	devoe => ww_devoe,
	o => \ledB~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\pwmServo~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm|pwm~q\,
	devoe => ww_devoe,
	o => \pwmServo~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\Arduino_on~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Arduino_on~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\Arduino_clave~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \funcCLAVE|salida~combout\,
	devoe => ww_devoe,
	o => \Arduino_clave~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X31_Y16_N0
\clkBeep|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~0_combout\ = \clkBeep|cuenta\(0) $ (GND)
-- \clkBeep|Add0~1\ = CARRY(!\clkBeep|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(0),
	datad => VCC,
	combout => \clkBeep|Add0~0_combout\,
	cout => \clkBeep|Add0~1\);

-- Location: LCCOMB_X32_Y16_N30
\clkBeep|cuenta[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|cuenta[0]~5_combout\ = !\clkBeep|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkBeep|Add0~0_combout\,
	combout => \clkBeep|cuenta[0]~5_combout\);

-- Location: FF_X31_Y16_N29
\clkBeep|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clkBeep|cuenta[0]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(0));

-- Location: LCCOMB_X31_Y16_N2
\clkBeep|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~2_combout\ = (\clkBeep|cuenta\(1) & (!\clkBeep|Add0~1\)) # (!\clkBeep|cuenta\(1) & ((\clkBeep|Add0~1\) # (GND)))
-- \clkBeep|Add0~3\ = CARRY((!\clkBeep|Add0~1\) # (!\clkBeep|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(1),
	datad => VCC,
	cin => \clkBeep|Add0~1\,
	combout => \clkBeep|Add0~2_combout\,
	cout => \clkBeep|Add0~3\);

-- Location: FF_X31_Y16_N3
\clkBeep|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(1));

-- Location: LCCOMB_X31_Y16_N4
\clkBeep|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~4_combout\ = (\clkBeep|cuenta\(2) & (\clkBeep|Add0~3\ $ (GND))) # (!\clkBeep|cuenta\(2) & (!\clkBeep|Add0~3\ & VCC))
-- \clkBeep|Add0~5\ = CARRY((\clkBeep|cuenta\(2) & !\clkBeep|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(2),
	datad => VCC,
	cin => \clkBeep|Add0~3\,
	combout => \clkBeep|Add0~4_combout\,
	cout => \clkBeep|Add0~5\);

-- Location: FF_X31_Y16_N5
\clkBeep|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(2));

-- Location: LCCOMB_X31_Y16_N6
\clkBeep|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~6_combout\ = (\clkBeep|cuenta\(3) & (!\clkBeep|Add0~5\)) # (!\clkBeep|cuenta\(3) & ((\clkBeep|Add0~5\) # (GND)))
-- \clkBeep|Add0~7\ = CARRY((!\clkBeep|Add0~5\) # (!\clkBeep|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(3),
	datad => VCC,
	cin => \clkBeep|Add0~5\,
	combout => \clkBeep|Add0~6_combout\,
	cout => \clkBeep|Add0~7\);

-- Location: FF_X31_Y16_N7
\clkBeep|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(3));

-- Location: LCCOMB_X32_Y16_N20
\clkBeep|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Equal0~0_combout\ = (!\clkBeep|cuenta\(1) & (!\clkBeep|cuenta\(3) & (!\clkBeep|cuenta\(2) & \clkBeep|cuenta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(1),
	datab => \clkBeep|cuenta\(3),
	datac => \clkBeep|cuenta\(2),
	datad => \clkBeep|cuenta\(0),
	combout => \clkBeep|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y13_N2
\clkClave|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~1_cout\ = CARRY((\clkBeep|cuenta\(1) & !\clkBeep|cuenta\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(1),
	datab => \clkBeep|cuenta\(0),
	datad => VCC,
	cout => \clkClave|Add0~1_cout\);

-- Location: LCCOMB_X32_Y13_N4
\clkClave|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~3_cout\ = CARRY((!\clkClave|Add0~1_cout\) # (!\clkBeep|cuenta\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(2),
	datad => VCC,
	cin => \clkClave|Add0~1_cout\,
	cout => \clkClave|Add0~3_cout\);

-- Location: LCCOMB_X32_Y13_N6
\clkClave|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~5_cout\ = CARRY((\clkBeep|cuenta\(3) & !\clkClave|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(3),
	datad => VCC,
	cin => \clkClave|Add0~3_cout\,
	cout => \clkClave|Add0~5_cout\);

-- Location: LCCOMB_X32_Y13_N8
\clkClave|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~6_combout\ = (\clkClave|cuenta\(4) & (!\clkClave|Add0~5_cout\)) # (!\clkClave|cuenta\(4) & ((\clkClave|Add0~5_cout\) # (GND)))
-- \clkClave|Add0~7\ = CARRY((!\clkClave|Add0~5_cout\) # (!\clkClave|cuenta\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|cuenta\(4),
	datad => VCC,
	cin => \clkClave|Add0~5_cout\,
	combout => \clkClave|Add0~6_combout\,
	cout => \clkClave|Add0~7\);

-- Location: LCCOMB_X33_Y13_N24
\clkClave|cuenta~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|cuenta~11_combout\ = (\clkClave|Add0~6_combout\ & ((!\clkClave|Equal0~3_combout\) # (!\clkClave|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|Add0~6_combout\,
	datab => \clkClave|Equal0~8_combout\,
	datac => \clkClave|Equal0~3_combout\,
	combout => \clkClave|cuenta~11_combout\);

-- Location: FF_X33_Y13_N25
\clkClave|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|cuenta~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(4));

-- Location: LCCOMB_X32_Y13_N10
\clkClave|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~8_combout\ = (\clkClave|cuenta\(5) & (\clkClave|Add0~7\ $ (GND))) # (!\clkClave|cuenta\(5) & (!\clkClave|Add0~7\ & VCC))
-- \clkClave|Add0~9\ = CARRY((\clkClave|cuenta\(5) & !\clkClave|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(5),
	datad => VCC,
	cin => \clkClave|Add0~7\,
	combout => \clkClave|Add0~8_combout\,
	cout => \clkClave|Add0~9\);

-- Location: FF_X32_Y13_N11
\clkClave|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(5));

-- Location: LCCOMB_X32_Y13_N12
\clkClave|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~10_combout\ = (\clkClave|cuenta\(6) & (!\clkClave|Add0~9\)) # (!\clkClave|cuenta\(6) & ((\clkClave|Add0~9\) # (GND)))
-- \clkClave|Add0~11\ = CARRY((!\clkClave|Add0~9\) # (!\clkClave|cuenta\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(6),
	datad => VCC,
	cin => \clkClave|Add0~9\,
	combout => \clkClave|Add0~10_combout\,
	cout => \clkClave|Add0~11\);

-- Location: FF_X32_Y13_N13
\clkClave|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(6));

-- Location: LCCOMB_X32_Y13_N14
\clkClave|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~12_combout\ = (\clkClave|cuenta\(7) & (\clkClave|Add0~11\ $ (GND))) # (!\clkClave|cuenta\(7) & (!\clkClave|Add0~11\ & VCC))
-- \clkClave|Add0~13\ = CARRY((\clkClave|cuenta\(7) & !\clkClave|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|cuenta\(7),
	datad => VCC,
	cin => \clkClave|Add0~11\,
	combout => \clkClave|Add0~12_combout\,
	cout => \clkClave|Add0~13\);

-- Location: FF_X32_Y13_N15
\clkClave|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(7));

-- Location: LCCOMB_X32_Y13_N16
\clkClave|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~14_combout\ = (\clkClave|cuenta\(8) & (!\clkClave|Add0~13\)) # (!\clkClave|cuenta\(8) & ((\clkClave|Add0~13\) # (GND)))
-- \clkClave|Add0~15\ = CARRY((!\clkClave|Add0~13\) # (!\clkClave|cuenta\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|cuenta\(8),
	datad => VCC,
	cin => \clkClave|Add0~13\,
	combout => \clkClave|Add0~14_combout\,
	cout => \clkClave|Add0~15\);

-- Location: FF_X32_Y13_N17
\clkClave|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(8));

-- Location: LCCOMB_X32_Y13_N18
\clkClave|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~16_combout\ = (\clkClave|cuenta\(9) & (\clkClave|Add0~15\ $ (GND))) # (!\clkClave|cuenta\(9) & (!\clkClave|Add0~15\ & VCC))
-- \clkClave|Add0~17\ = CARRY((\clkClave|cuenta\(9) & !\clkClave|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(9),
	datad => VCC,
	cin => \clkClave|Add0~15\,
	combout => \clkClave|Add0~16_combout\,
	cout => \clkClave|Add0~17\);

-- Location: LCCOMB_X33_Y12_N0
\clkClave|cuenta~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|cuenta~10_combout\ = (\clkClave|Add0~16_combout\ & ((!\clkClave|Equal0~8_combout\) # (!\clkClave|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|Equal0~3_combout\,
	datac => \clkClave|Add0~16_combout\,
	datad => \clkClave|Equal0~8_combout\,
	combout => \clkClave|cuenta~10_combout\);

-- Location: FF_X33_Y12_N1
\clkClave|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|cuenta~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(9));

-- Location: LCCOMB_X33_Y13_N10
\clkClave|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Equal0~6_combout\ = (!\clkClave|cuenta\(7) & (!\clkClave|cuenta\(8) & (\clkClave|cuenta\(9) & !\clkClave|cuenta\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(7),
	datab => \clkClave|cuenta\(8),
	datac => \clkClave|cuenta\(9),
	datad => \clkClave|cuenta\(6),
	combout => \clkClave|Equal0~6_combout\);

-- Location: LCCOMB_X32_Y13_N20
\clkClave|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~18_combout\ = (\clkClave|cuenta\(10) & (!\clkClave|Add0~17\)) # (!\clkClave|cuenta\(10) & ((\clkClave|Add0~17\) # (GND)))
-- \clkClave|Add0~19\ = CARRY((!\clkClave|Add0~17\) # (!\clkClave|cuenta\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|cuenta\(10),
	datad => VCC,
	cin => \clkClave|Add0~17\,
	combout => \clkClave|Add0~18_combout\,
	cout => \clkClave|Add0~19\);

-- Location: LCCOMB_X33_Y13_N18
\clkClave|cuenta~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|cuenta~9_combout\ = (\clkClave|Add0~18_combout\ & ((!\clkClave|Equal0~3_combout\) # (!\clkClave|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|Equal0~8_combout\,
	datac => \clkClave|Equal0~3_combout\,
	datad => \clkClave|Add0~18_combout\,
	combout => \clkClave|cuenta~9_combout\);

-- Location: FF_X33_Y13_N19
\clkClave|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|cuenta~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(10));

-- Location: LCCOMB_X32_Y13_N22
\clkClave|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~20_combout\ = (\clkClave|cuenta\(11) & (\clkClave|Add0~19\ $ (GND))) # (!\clkClave|cuenta\(11) & (!\clkClave|Add0~19\ & VCC))
-- \clkClave|Add0~21\ = CARRY((\clkClave|cuenta\(11) & !\clkClave|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(11),
	datad => VCC,
	cin => \clkClave|Add0~19\,
	combout => \clkClave|Add0~20_combout\,
	cout => \clkClave|Add0~21\);

-- Location: LCCOMB_X33_Y13_N4
\clkClave|cuenta~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|cuenta~8_combout\ = (\clkClave|Add0~20_combout\ & ((!\clkClave|Equal0~3_combout\) # (!\clkClave|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|Equal0~8_combout\,
	datac => \clkClave|Equal0~3_combout\,
	datad => \clkClave|Add0~20_combout\,
	combout => \clkClave|cuenta~8_combout\);

-- Location: FF_X33_Y13_N5
\clkClave|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|cuenta~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(11));

-- Location: LCCOMB_X32_Y13_N24
\clkClave|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~22_combout\ = (\clkClave|cuenta\(12) & (!\clkClave|Add0~21\)) # (!\clkClave|cuenta\(12) & ((\clkClave|Add0~21\) # (GND)))
-- \clkClave|Add0~23\ = CARRY((!\clkClave|Add0~21\) # (!\clkClave|cuenta\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(12),
	datad => VCC,
	cin => \clkClave|Add0~21\,
	combout => \clkClave|Add0~22_combout\,
	cout => \clkClave|Add0~23\);

-- Location: LCCOMB_X33_Y13_N2
\clkClave|cuenta~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|cuenta~7_combout\ = (\clkClave|Add0~22_combout\ & ((!\clkClave|Equal0~3_combout\) # (!\clkClave|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|Equal0~8_combout\,
	datac => \clkClave|Equal0~3_combout\,
	datad => \clkClave|Add0~22_combout\,
	combout => \clkClave|cuenta~7_combout\);

-- Location: FF_X33_Y13_N3
\clkClave|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|cuenta~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(12));

-- Location: LCCOMB_X32_Y13_N26
\clkClave|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~24_combout\ = (\clkClave|cuenta\(13) & (\clkClave|Add0~23\ $ (GND))) # (!\clkClave|cuenta\(13) & (!\clkClave|Add0~23\ & VCC))
-- \clkClave|Add0~25\ = CARRY((\clkClave|cuenta\(13) & !\clkClave|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(13),
	datad => VCC,
	cin => \clkClave|Add0~23\,
	combout => \clkClave|Add0~24_combout\,
	cout => \clkClave|Add0~25\);

-- Location: FF_X32_Y13_N27
\clkClave|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(13));

-- Location: LCCOMB_X33_Y13_N8
\clkClave|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Equal0~5_combout\ = (!\clkClave|cuenta\(13) & (\clkClave|cuenta\(10) & (\clkClave|cuenta\(11) & \clkClave|cuenta\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(13),
	datab => \clkClave|cuenta\(10),
	datac => \clkClave|cuenta\(11),
	datad => \clkClave|cuenta\(12),
	combout => \clkClave|Equal0~5_combout\);

-- Location: LCCOMB_X32_Y12_N14
\clkClave|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~44_combout\ = (\clkClave|cuenta\(23) & (\clkClave|Add0~43\ $ (GND))) # (!\clkClave|cuenta\(23) & (!\clkClave|Add0~43\ & VCC))
-- \clkClave|Add0~45\ = CARRY((\clkClave|cuenta\(23) & !\clkClave|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|cuenta\(23),
	datad => VCC,
	cin => \clkClave|Add0~43\,
	combout => \clkClave|Add0~44_combout\,
	cout => \clkClave|Add0~45\);

-- Location: LCCOMB_X32_Y12_N16
\clkClave|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~46_combout\ = (\clkClave|cuenta\(24) & (!\clkClave|Add0~45\)) # (!\clkClave|cuenta\(24) & ((\clkClave|Add0~45\) # (GND)))
-- \clkClave|Add0~47\ = CARRY((!\clkClave|Add0~45\) # (!\clkClave|cuenta\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|cuenta\(24),
	datad => VCC,
	cin => \clkClave|Add0~45\,
	combout => \clkClave|Add0~46_combout\,
	cout => \clkClave|Add0~47\);

-- Location: FF_X32_Y12_N17
\clkClave|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(24));

-- Location: LCCOMB_X32_Y12_N18
\clkClave|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~48_combout\ = (\clkClave|cuenta\(25) & (\clkClave|Add0~47\ $ (GND))) # (!\clkClave|cuenta\(25) & (!\clkClave|Add0~47\ & VCC))
-- \clkClave|Add0~49\ = CARRY((\clkClave|cuenta\(25) & !\clkClave|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|cuenta\(25),
	datad => VCC,
	cin => \clkClave|Add0~47\,
	combout => \clkClave|Add0~48_combout\,
	cout => \clkClave|Add0~49\);

-- Location: FF_X32_Y12_N19
\clkClave|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(25));

-- Location: LCCOMB_X32_Y12_N20
\clkClave|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~50_combout\ = (\clkClave|cuenta\(26) & (!\clkClave|Add0~49\)) # (!\clkClave|cuenta\(26) & ((\clkClave|Add0~49\) # (GND)))
-- \clkClave|Add0~51\ = CARRY((!\clkClave|Add0~49\) # (!\clkClave|cuenta\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|cuenta\(26),
	datad => VCC,
	cin => \clkClave|Add0~49\,
	combout => \clkClave|Add0~50_combout\,
	cout => \clkClave|Add0~51\);

-- Location: FF_X32_Y12_N21
\clkClave|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(26));

-- Location: LCCOMB_X32_Y12_N22
\clkClave|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~52_combout\ = (\clkClave|cuenta\(27) & (\clkClave|Add0~51\ $ (GND))) # (!\clkClave|cuenta\(27) & (!\clkClave|Add0~51\ & VCC))
-- \clkClave|Add0~53\ = CARRY((\clkClave|cuenta\(27) & !\clkClave|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(27),
	datad => VCC,
	cin => \clkClave|Add0~51\,
	combout => \clkClave|Add0~52_combout\,
	cout => \clkClave|Add0~53\);

-- Location: FF_X32_Y12_N23
\clkClave|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(27));

-- Location: LCCOMB_X32_Y12_N24
\clkClave|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~54_combout\ = (\clkClave|cuenta\(28) & (!\clkClave|Add0~53\)) # (!\clkClave|cuenta\(28) & ((\clkClave|Add0~53\) # (GND)))
-- \clkClave|Add0~55\ = CARRY((!\clkClave|Add0~53\) # (!\clkClave|cuenta\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|cuenta\(28),
	datad => VCC,
	cin => \clkClave|Add0~53\,
	combout => \clkClave|Add0~54_combout\,
	cout => \clkClave|Add0~55\);

-- Location: FF_X32_Y12_N25
\clkClave|cuenta[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(28));

-- Location: LCCOMB_X32_Y12_N26
\clkClave|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~56_combout\ = (\clkClave|cuenta\(29) & (\clkClave|Add0~55\ $ (GND))) # (!\clkClave|cuenta\(29) & (!\clkClave|Add0~55\ & VCC))
-- \clkClave|Add0~57\ = CARRY((\clkClave|cuenta\(29) & !\clkClave|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(29),
	datad => VCC,
	cin => \clkClave|Add0~55\,
	combout => \clkClave|Add0~56_combout\,
	cout => \clkClave|Add0~57\);

-- Location: FF_X32_Y12_N27
\clkClave|cuenta[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(29));

-- Location: LCCOMB_X32_Y12_N28
\clkClave|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~58_combout\ = (\clkClave|cuenta\(30) & (!\clkClave|Add0~57\)) # (!\clkClave|cuenta\(30) & ((\clkClave|Add0~57\) # (GND)))
-- \clkClave|Add0~59\ = CARRY((!\clkClave|Add0~57\) # (!\clkClave|cuenta\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|cuenta\(30),
	datad => VCC,
	cin => \clkClave|Add0~57\,
	combout => \clkClave|Add0~58_combout\,
	cout => \clkClave|Add0~59\);

-- Location: FF_X32_Y12_N29
\clkClave|cuenta[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(30));

-- Location: LCCOMB_X32_Y12_N30
\clkClave|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~60_combout\ = \clkClave|cuenta\(31) $ (!\clkClave|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(31),
	cin => \clkClave|Add0~59\,
	combout => \clkClave|Add0~60_combout\);

-- Location: FF_X32_Y12_N31
\clkClave|cuenta[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(31));

-- Location: LCCOMB_X33_Y13_N22
\clkClave|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Equal0~7_combout\ = (!\clkClave|cuenta\(5) & (\clkClave|cuenta\(4) & (!\clkClave|cuenta\(30) & !\clkClave|cuenta\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(5),
	datab => \clkClave|cuenta\(4),
	datac => \clkClave|cuenta\(30),
	datad => \clkClave|cuenta\(31),
	combout => \clkClave|Equal0~7_combout\);

-- Location: LCCOMB_X32_Y13_N28
\clkClave|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~26_combout\ = (\clkClave|cuenta\(14) & (!\clkClave|Add0~25\)) # (!\clkClave|cuenta\(14) & ((\clkClave|Add0~25\) # (GND)))
-- \clkClave|Add0~27\ = CARRY((!\clkClave|Add0~25\) # (!\clkClave|cuenta\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|cuenta\(14),
	datad => VCC,
	cin => \clkClave|Add0~25\,
	combout => \clkClave|Add0~26_combout\,
	cout => \clkClave|Add0~27\);

-- Location: LCCOMB_X32_Y13_N0
\clkClave|cuenta~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|cuenta~6_combout\ = (\clkClave|Add0~26_combout\ & ((!\clkClave|Equal0~3_combout\) # (!\clkClave|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|Equal0~8_combout\,
	datac => \clkClave|Equal0~3_combout\,
	datad => \clkClave|Add0~26_combout\,
	combout => \clkClave|cuenta~6_combout\);

-- Location: FF_X32_Y13_N1
\clkClave|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|cuenta~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(14));

-- Location: LCCOMB_X32_Y13_N30
\clkClave|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~28_combout\ = (\clkClave|cuenta\(15) & (\clkClave|Add0~27\ $ (GND))) # (!\clkClave|cuenta\(15) & (!\clkClave|Add0~27\ & VCC))
-- \clkClave|Add0~29\ = CARRY((\clkClave|cuenta\(15) & !\clkClave|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(15),
	datad => VCC,
	cin => \clkClave|Add0~27\,
	combout => \clkClave|Add0~28_combout\,
	cout => \clkClave|Add0~29\);

-- Location: FF_X32_Y13_N31
\clkClave|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(15));

-- Location: LCCOMB_X32_Y12_N0
\clkClave|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~30_combout\ = (\clkClave|cuenta\(16) & (!\clkClave|Add0~29\)) # (!\clkClave|cuenta\(16) & ((\clkClave|Add0~29\) # (GND)))
-- \clkClave|Add0~31\ = CARRY((!\clkClave|Add0~29\) # (!\clkClave|cuenta\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(16),
	datad => VCC,
	cin => \clkClave|Add0~29\,
	combout => \clkClave|Add0~30_combout\,
	cout => \clkClave|Add0~31\);

-- Location: LCCOMB_X33_Y13_N30
\clkClave|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|cuenta~5_combout\ = (\clkClave|Add0~30_combout\ & ((!\clkClave|Equal0~3_combout\) # (!\clkClave|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|Equal0~8_combout\,
	datac => \clkClave|Equal0~3_combout\,
	datad => \clkClave|Add0~30_combout\,
	combout => \clkClave|cuenta~5_combout\);

-- Location: FF_X33_Y13_N31
\clkClave|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(16));

-- Location: LCCOMB_X32_Y12_N2
\clkClave|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~32_combout\ = (\clkClave|cuenta\(17) & (\clkClave|Add0~31\ $ (GND))) # (!\clkClave|cuenta\(17) & (!\clkClave|Add0~31\ & VCC))
-- \clkClave|Add0~33\ = CARRY((\clkClave|cuenta\(17) & !\clkClave|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(17),
	datad => VCC,
	cin => \clkClave|Add0~31\,
	combout => \clkClave|Add0~32_combout\,
	cout => \clkClave|Add0~33\);

-- Location: LCCOMB_X33_Y13_N20
\clkClave|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|cuenta~4_combout\ = (\clkClave|Add0~32_combout\ & ((!\clkClave|Equal0~3_combout\) # (!\clkClave|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|Equal0~8_combout\,
	datac => \clkClave|Equal0~3_combout\,
	datad => \clkClave|Add0~32_combout\,
	combout => \clkClave|cuenta~4_combout\);

-- Location: FF_X33_Y13_N21
\clkClave|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(17));

-- Location: LCCOMB_X33_Y13_N16
\clkClave|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Equal0~4_combout\ = (\clkClave|cuenta\(14) & (!\clkClave|cuenta\(15) & (\clkClave|cuenta\(16) & \clkClave|cuenta\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(14),
	datab => \clkClave|cuenta\(15),
	datac => \clkClave|cuenta\(16),
	datad => \clkClave|cuenta\(17),
	combout => \clkClave|Equal0~4_combout\);

-- Location: LCCOMB_X33_Y13_N28
\clkClave|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Equal0~8_combout\ = (\clkClave|Equal0~6_combout\ & (\clkClave|Equal0~5_combout\ & (\clkClave|Equal0~7_combout\ & \clkClave|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|Equal0~6_combout\,
	datab => \clkClave|Equal0~5_combout\,
	datac => \clkClave|Equal0~7_combout\,
	datad => \clkClave|Equal0~4_combout\,
	combout => \clkClave|Equal0~8_combout\);

-- Location: LCCOMB_X32_Y12_N4
\clkClave|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~34_combout\ = (\clkClave|cuenta\(18) & (!\clkClave|Add0~33\)) # (!\clkClave|cuenta\(18) & ((\clkClave|Add0~33\) # (GND)))
-- \clkClave|Add0~35\ = CARRY((!\clkClave|Add0~33\) # (!\clkClave|cuenta\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(18),
	datad => VCC,
	cin => \clkClave|Add0~33\,
	combout => \clkClave|Add0~34_combout\,
	cout => \clkClave|Add0~35\);

-- Location: LCCOMB_X33_Y12_N2
\clkClave|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|cuenta~3_combout\ = (\clkClave|Add0~34_combout\ & ((!\clkClave|Equal0~8_combout\) # (!\clkClave|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|Equal0~3_combout\,
	datac => \clkClave|Add0~34_combout\,
	datad => \clkClave|Equal0~8_combout\,
	combout => \clkClave|cuenta~3_combout\);

-- Location: FF_X33_Y12_N3
\clkClave|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(18));

-- Location: LCCOMB_X32_Y12_N6
\clkClave|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~36_combout\ = (\clkClave|cuenta\(19) & (\clkClave|Add0~35\ $ (GND))) # (!\clkClave|cuenta\(19) & (!\clkClave|Add0~35\ & VCC))
-- \clkClave|Add0~37\ = CARRY((\clkClave|cuenta\(19) & !\clkClave|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|cuenta\(19),
	datad => VCC,
	cin => \clkClave|Add0~35\,
	combout => \clkClave|Add0~36_combout\,
	cout => \clkClave|Add0~37\);

-- Location: LCCOMB_X33_Y12_N22
\clkClave|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|cuenta~2_combout\ = (\clkClave|Add0~36_combout\ & ((!\clkClave|Equal0~8_combout\) # (!\clkClave|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|Equal0~3_combout\,
	datac => \clkClave|Add0~36_combout\,
	datad => \clkClave|Equal0~8_combout\,
	combout => \clkClave|cuenta~2_combout\);

-- Location: FF_X33_Y12_N23
\clkClave|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(19));

-- Location: LCCOMB_X32_Y12_N8
\clkClave|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~38_combout\ = (\clkClave|cuenta\(20) & (!\clkClave|Add0~37\)) # (!\clkClave|cuenta\(20) & ((\clkClave|Add0~37\) # (GND)))
-- \clkClave|Add0~39\ = CARRY((!\clkClave|Add0~37\) # (!\clkClave|cuenta\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|cuenta\(20),
	datad => VCC,
	cin => \clkClave|Add0~37\,
	combout => \clkClave|Add0~38_combout\,
	cout => \clkClave|Add0~39\);

-- Location: LCCOMB_X33_Y12_N18
\clkClave|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|cuenta~1_combout\ = (\clkClave|Add0~38_combout\ & ((!\clkClave|Equal0~3_combout\) # (!\clkClave|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|Equal0~8_combout\,
	datac => \clkClave|Equal0~3_combout\,
	datad => \clkClave|Add0~38_combout\,
	combout => \clkClave|cuenta~1_combout\);

-- Location: FF_X33_Y12_N19
\clkClave|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(20));

-- Location: LCCOMB_X32_Y12_N10
\clkClave|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~40_combout\ = (\clkClave|cuenta\(21) & (\clkClave|Add0~39\ $ (GND))) # (!\clkClave|cuenta\(21) & (!\clkClave|Add0~39\ & VCC))
-- \clkClave|Add0~41\ = CARRY((\clkClave|cuenta\(21) & !\clkClave|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(21),
	datad => VCC,
	cin => \clkClave|Add0~39\,
	combout => \clkClave|Add0~40_combout\,
	cout => \clkClave|Add0~41\);

-- Location: FF_X32_Y12_N11
\clkClave|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(21));

-- Location: LCCOMB_X32_Y12_N12
\clkClave|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Add0~42_combout\ = (\clkClave|cuenta\(22) & (!\clkClave|Add0~41\)) # (!\clkClave|cuenta\(22) & ((\clkClave|Add0~41\) # (GND)))
-- \clkClave|Add0~43\ = CARRY((!\clkClave|Add0~41\) # (!\clkClave|cuenta\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|cuenta\(22),
	datad => VCC,
	cin => \clkClave|Add0~41\,
	combout => \clkClave|Add0~42_combout\,
	cout => \clkClave|Add0~43\);

-- Location: LCCOMB_X33_Y12_N12
\clkClave|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|cuenta~0_combout\ = (\clkClave|Add0~42_combout\ & ((!\clkClave|Equal0~3_combout\) # (!\clkClave|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|Equal0~8_combout\,
	datac => \clkClave|Equal0~3_combout\,
	datad => \clkClave|Add0~42_combout\,
	combout => \clkClave|cuenta~0_combout\);

-- Location: FF_X33_Y12_N13
\clkClave|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(22));

-- Location: FF_X32_Y12_N15
\clkClave|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|cuenta\(23));

-- Location: LCCOMB_X33_Y12_N20
\clkClave|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Equal0~1_combout\ = (!\clkClave|cuenta\(23) & (!\clkClave|cuenta\(25) & (!\clkClave|cuenta\(24) & \clkClave|cuenta\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(23),
	datab => \clkClave|cuenta\(25),
	datac => \clkClave|cuenta\(24),
	datad => \clkClave|cuenta\(22),
	combout => \clkClave|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y12_N26
\clkClave|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Equal0~2_combout\ = (!\clkClave|cuenta\(21) & (\clkClave|cuenta\(20) & (\clkClave|cuenta\(19) & \clkClave|cuenta\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(21),
	datab => \clkClave|cuenta\(20),
	datac => \clkClave|cuenta\(19),
	datad => \clkClave|cuenta\(18),
	combout => \clkClave|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y12_N28
\clkClave|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Equal0~0_combout\ = (!\clkClave|cuenta\(28) & (!\clkClave|cuenta\(27) & (!\clkClave|cuenta\(29) & !\clkClave|cuenta\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkClave|cuenta\(28),
	datab => \clkClave|cuenta\(27),
	datac => \clkClave|cuenta\(29),
	datad => \clkClave|cuenta\(26),
	combout => \clkClave|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y12_N8
\clkClave|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|Equal0~3_combout\ = (\clkBeep|Equal0~0_combout\ & (\clkClave|Equal0~1_combout\ & (\clkClave|Equal0~2_combout\ & \clkClave|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|Equal0~0_combout\,
	datab => \clkClave|Equal0~1_combout\,
	datac => \clkClave|Equal0~2_combout\,
	datad => \clkClave|Equal0~0_combout\,
	combout => \clkClave|Equal0~3_combout\);

-- Location: LCCOMB_X33_Y12_N10
\clkClave|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|salida~0_combout\ = \clkClave|salida~q\ $ (((\clkClave|Equal0~3_combout\ & \clkClave|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|salida~q\,
	datac => \clkClave|Equal0~3_combout\,
	datad => \clkClave|Equal0~8_combout\,
	combout => \clkClave|salida~0_combout\);

-- Location: LCCOMB_X33_Y12_N24
\clkClave|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkClave|salida~feeder_combout\ = \clkClave|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkClave|salida~0_combout\,
	combout => \clkClave|salida~feeder_combout\);

-- Location: FF_X33_Y12_N25
\clkClave|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkClave|salida~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkClave|salida~q\);

-- Location: CLKCTRL_G8
\clkClave|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkClave|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkClave|salida~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N8
\btn3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn3,
	o => \btn3~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\btn2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn2,
	o => \btn2~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\btn1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn1,
	o => \btn1~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\btn4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn4,
	o => \btn4~input_o\);

-- Location: LCCOMB_X31_Y10_N16
\funcCLAVE|beepSound~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|beepSound~0_combout\ = (((!\btn4~input_o\) # (!\btn1~input_o\)) # (!\btn2~input_o\)) # (!\btn3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn3~input_o\,
	datab => \btn2~input_o\,
	datac => \btn1~input_o\,
	datad => \btn4~input_o\,
	combout => \funcCLAVE|beepSound~0_combout\);

-- Location: IOIBUF_X32_Y0_N15
\Sensor_listo~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sensor_listo,
	o => \Sensor_listo~input_o\);

-- Location: LCCOMB_X31_Y16_N8
\clkBeep|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~8_combout\ = (\clkBeep|cuenta\(4) & (\clkBeep|Add0~7\ $ (GND))) # (!\clkBeep|cuenta\(4) & (!\clkBeep|Add0~7\ & VCC))
-- \clkBeep|Add0~9\ = CARRY((\clkBeep|cuenta\(4) & !\clkBeep|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(4),
	datad => VCC,
	cin => \clkBeep|Add0~7\,
	combout => \clkBeep|Add0~8_combout\,
	cout => \clkBeep|Add0~9\);

-- Location: FF_X31_Y16_N9
\clkBeep|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(4));

-- Location: LCCOMB_X29_Y16_N2
\clkTemporizador|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~1_cout\ = CARRY((\clkBeep|cuenta\(1) & !\clkBeep|cuenta\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(1),
	datab => \clkBeep|cuenta\(0),
	datad => VCC,
	cout => \clkTemporizador|Add0~1_cout\);

-- Location: LCCOMB_X29_Y16_N4
\clkTemporizador|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~3_cout\ = CARRY((!\clkTemporizador|Add0~1_cout\) # (!\clkBeep|cuenta\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(2),
	datad => VCC,
	cin => \clkTemporizador|Add0~1_cout\,
	cout => \clkTemporizador|Add0~3_cout\);

-- Location: LCCOMB_X29_Y16_N6
\clkTemporizador|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~5_cout\ = CARRY((\clkBeep|cuenta\(3) & !\clkTemporizador|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(3),
	datad => VCC,
	cin => \clkTemporizador|Add0~3_cout\,
	cout => \clkTemporizador|Add0~5_cout\);

-- Location: LCCOMB_X29_Y16_N8
\clkTemporizador|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~7_cout\ = CARRY((!\clkTemporizador|Add0~5_cout\) # (!\clkBeep|cuenta\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(4),
	datad => VCC,
	cin => \clkTemporizador|Add0~5_cout\,
	cout => \clkTemporizador|Add0~7_cout\);

-- Location: LCCOMB_X29_Y16_N10
\clkTemporizador|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~8_combout\ = (\clkTemporizador|cuenta\(5) & (\clkTemporizador|Add0~7_cout\ $ (GND))) # (!\clkTemporizador|cuenta\(5) & (!\clkTemporizador|Add0~7_cout\ & VCC))
-- \clkTemporizador|Add0~9\ = CARRY((\clkTemporizador|cuenta\(5) & !\clkTemporizador|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(5),
	datad => VCC,
	cin => \clkTemporizador|Add0~7_cout\,
	combout => \clkTemporizador|Add0~8_combout\,
	cout => \clkTemporizador|Add0~9\);

-- Location: FF_X29_Y16_N11
\clkTemporizador|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(5));

-- Location: LCCOMB_X29_Y15_N14
\clkTemporizador|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~44_combout\ = (\clkTemporizador|cuenta\(23) & (\clkTemporizador|Add0~43\ $ (GND))) # (!\clkTemporizador|cuenta\(23) & (!\clkTemporizador|Add0~43\ & VCC))
-- \clkTemporizador|Add0~45\ = CARRY((\clkTemporizador|cuenta\(23) & !\clkTemporizador|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkTemporizador|cuenta\(23),
	datad => VCC,
	cin => \clkTemporizador|Add0~43\,
	combout => \clkTemporizador|Add0~44_combout\,
	cout => \clkTemporizador|Add0~45\);

-- Location: LCCOMB_X29_Y15_N16
\clkTemporizador|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~46_combout\ = (\clkTemporizador|cuenta\(24) & (!\clkTemporizador|Add0~45\)) # (!\clkTemporizador|cuenta\(24) & ((\clkTemporizador|Add0~45\) # (GND)))
-- \clkTemporizador|Add0~47\ = CARRY((!\clkTemporizador|Add0~45\) # (!\clkTemporizador|cuenta\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(24),
	datad => VCC,
	cin => \clkTemporizador|Add0~45\,
	combout => \clkTemporizador|Add0~46_combout\,
	cout => \clkTemporizador|Add0~47\);

-- Location: LCCOMB_X30_Y15_N2
\clkTemporizador|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|cuenta~0_combout\ = (\clkTemporizador|Add0~46_combout\ & ((!\clkTemporizador|Equal0~8_combout\) # (!\clkTemporizador|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|Equal0~2_combout\,
	datac => \clkTemporizador|Add0~46_combout\,
	datad => \clkTemporizador|Equal0~8_combout\,
	combout => \clkTemporizador|cuenta~0_combout\);

-- Location: FF_X30_Y15_N3
\clkTemporizador|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(24));

-- Location: LCCOMB_X29_Y15_N18
\clkTemporizador|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~48_combout\ = (\clkTemporizador|cuenta\(25) & (\clkTemporizador|Add0~47\ $ (GND))) # (!\clkTemporizador|cuenta\(25) & (!\clkTemporizador|Add0~47\ & VCC))
-- \clkTemporizador|Add0~49\ = CARRY((\clkTemporizador|cuenta\(25) & !\clkTemporizador|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkTemporizador|cuenta\(25),
	datad => VCC,
	cin => \clkTemporizador|Add0~47\,
	combout => \clkTemporizador|Add0~48_combout\,
	cout => \clkTemporizador|Add0~49\);

-- Location: FF_X29_Y15_N19
\clkTemporizador|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(25));

-- Location: LCCOMB_X29_Y15_N20
\clkTemporizador|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~50_combout\ = (\clkTemporizador|cuenta\(26) & (!\clkTemporizador|Add0~49\)) # (!\clkTemporizador|cuenta\(26) & ((\clkTemporizador|Add0~49\) # (GND)))
-- \clkTemporizador|Add0~51\ = CARRY((!\clkTemporizador|Add0~49\) # (!\clkTemporizador|cuenta\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkTemporizador|cuenta\(26),
	datad => VCC,
	cin => \clkTemporizador|Add0~49\,
	combout => \clkTemporizador|Add0~50_combout\,
	cout => \clkTemporizador|Add0~51\);

-- Location: FF_X29_Y15_N21
\clkTemporizador|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(26));

-- Location: LCCOMB_X29_Y15_N22
\clkTemporizador|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~52_combout\ = (\clkTemporizador|cuenta\(27) & (\clkTemporizador|Add0~51\ $ (GND))) # (!\clkTemporizador|cuenta\(27) & (!\clkTemporizador|Add0~51\ & VCC))
-- \clkTemporizador|Add0~53\ = CARRY((\clkTemporizador|cuenta\(27) & !\clkTemporizador|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(27),
	datad => VCC,
	cin => \clkTemporizador|Add0~51\,
	combout => \clkTemporizador|Add0~52_combout\,
	cout => \clkTemporizador|Add0~53\);

-- Location: FF_X29_Y15_N23
\clkTemporizador|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(27));

-- Location: LCCOMB_X29_Y15_N24
\clkTemporizador|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~54_combout\ = (\clkTemporizador|cuenta\(28) & (!\clkTemporizador|Add0~53\)) # (!\clkTemporizador|cuenta\(28) & ((\clkTemporizador|Add0~53\) # (GND)))
-- \clkTemporizador|Add0~55\ = CARRY((!\clkTemporizador|Add0~53\) # (!\clkTemporizador|cuenta\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkTemporizador|cuenta\(28),
	datad => VCC,
	cin => \clkTemporizador|Add0~53\,
	combout => \clkTemporizador|Add0~54_combout\,
	cout => \clkTemporizador|Add0~55\);

-- Location: FF_X29_Y15_N25
\clkTemporizador|cuenta[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(28));

-- Location: LCCOMB_X29_Y15_N26
\clkTemporizador|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~56_combout\ = (\clkTemporizador|cuenta\(29) & (\clkTemporizador|Add0~55\ $ (GND))) # (!\clkTemporizador|cuenta\(29) & (!\clkTemporizador|Add0~55\ & VCC))
-- \clkTemporizador|Add0~57\ = CARRY((\clkTemporizador|cuenta\(29) & !\clkTemporizador|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(29),
	datad => VCC,
	cin => \clkTemporizador|Add0~55\,
	combout => \clkTemporizador|Add0~56_combout\,
	cout => \clkTemporizador|Add0~57\);

-- Location: FF_X29_Y15_N27
\clkTemporizador|cuenta[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(29));

-- Location: LCCOMB_X29_Y15_N28
\clkTemporizador|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~58_combout\ = (\clkTemporizador|cuenta\(30) & (!\clkTemporizador|Add0~57\)) # (!\clkTemporizador|cuenta\(30) & ((\clkTemporizador|Add0~57\) # (GND)))
-- \clkTemporizador|Add0~59\ = CARRY((!\clkTemporizador|Add0~57\) # (!\clkTemporizador|cuenta\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkTemporizador|cuenta\(30),
	datad => VCC,
	cin => \clkTemporizador|Add0~57\,
	combout => \clkTemporizador|Add0~58_combout\,
	cout => \clkTemporizador|Add0~59\);

-- Location: FF_X29_Y15_N29
\clkTemporizador|cuenta[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(30));

-- Location: LCCOMB_X29_Y15_N30
\clkTemporizador|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~60_combout\ = \clkTemporizador|cuenta\(31) $ (!\clkTemporizador|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(31),
	cin => \clkTemporizador|Add0~59\,
	combout => \clkTemporizador|Add0~60_combout\);

-- Location: FF_X29_Y15_N31
\clkTemporizador|cuenta[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(31));

-- Location: LCCOMB_X29_Y16_N12
\clkTemporizador|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~10_combout\ = (\clkTemporizador|cuenta\(6) & (!\clkTemporizador|Add0~9\)) # (!\clkTemporizador|cuenta\(6) & ((\clkTemporizador|Add0~9\) # (GND)))
-- \clkTemporizador|Add0~11\ = CARRY((!\clkTemporizador|Add0~9\) # (!\clkTemporizador|cuenta\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkTemporizador|cuenta\(6),
	datad => VCC,
	cin => \clkTemporizador|Add0~9\,
	combout => \clkTemporizador|Add0~10_combout\,
	cout => \clkTemporizador|Add0~11\);

-- Location: LCCOMB_X29_Y16_N0
\clkTemporizador|cuenta~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|cuenta~11_combout\ = (\clkTemporizador|Add0~10_combout\ & ((!\clkTemporizador|Equal0~8_combout\) # (!\clkTemporizador|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|Add0~10_combout\,
	datac => \clkTemporizador|Equal0~2_combout\,
	datad => \clkTemporizador|Equal0~8_combout\,
	combout => \clkTemporizador|cuenta~11_combout\);

-- Location: FF_X29_Y16_N1
\clkTemporizador|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|cuenta~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(6));

-- Location: LCCOMB_X29_Y16_N14
\clkTemporizador|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~12_combout\ = (\clkTemporizador|cuenta\(7) & (\clkTemporizador|Add0~11\ $ (GND))) # (!\clkTemporizador|cuenta\(7) & (!\clkTemporizador|Add0~11\ & VCC))
-- \clkTemporizador|Add0~13\ = CARRY((\clkTemporizador|cuenta\(7) & !\clkTemporizador|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkTemporizador|cuenta\(7),
	datad => VCC,
	cin => \clkTemporizador|Add0~11\,
	combout => \clkTemporizador|Add0~12_combout\,
	cout => \clkTemporizador|Add0~13\);

-- Location: FF_X29_Y16_N15
\clkTemporizador|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(7));

-- Location: LCCOMB_X29_Y16_N16
\clkTemporizador|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~14_combout\ = (\clkTemporizador|cuenta\(8) & (!\clkTemporizador|Add0~13\)) # (!\clkTemporizador|cuenta\(8) & ((\clkTemporizador|Add0~13\) # (GND)))
-- \clkTemporizador|Add0~15\ = CARRY((!\clkTemporizador|Add0~13\) # (!\clkTemporizador|cuenta\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkTemporizador|cuenta\(8),
	datad => VCC,
	cin => \clkTemporizador|Add0~13\,
	combout => \clkTemporizador|Add0~14_combout\,
	cout => \clkTemporizador|Add0~15\);

-- Location: FF_X29_Y16_N17
\clkTemporizador|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(8));

-- Location: LCCOMB_X29_Y16_N18
\clkTemporizador|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~16_combout\ = (\clkTemporizador|cuenta\(9) & (\clkTemporizador|Add0~15\ $ (GND))) # (!\clkTemporizador|cuenta\(9) & (!\clkTemporizador|Add0~15\ & VCC))
-- \clkTemporizador|Add0~17\ = CARRY((\clkTemporizador|cuenta\(9) & !\clkTemporizador|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkTemporizador|cuenta\(9),
	datad => VCC,
	cin => \clkTemporizador|Add0~15\,
	combout => \clkTemporizador|Add0~16_combout\,
	cout => \clkTemporizador|Add0~17\);

-- Location: FF_X29_Y16_N19
\clkTemporizador|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(9));

-- Location: LCCOMB_X29_Y16_N20
\clkTemporizador|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~18_combout\ = (\clkTemporizador|cuenta\(10) & (!\clkTemporizador|Add0~17\)) # (!\clkTemporizador|cuenta\(10) & ((\clkTemporizador|Add0~17\) # (GND)))
-- \clkTemporizador|Add0~19\ = CARRY((!\clkTemporizador|Add0~17\) # (!\clkTemporizador|cuenta\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkTemporizador|cuenta\(10),
	datad => VCC,
	cin => \clkTemporizador|Add0~17\,
	combout => \clkTemporizador|Add0~18_combout\,
	cout => \clkTemporizador|Add0~19\);

-- Location: FF_X29_Y16_N21
\clkTemporizador|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(10));

-- Location: LCCOMB_X29_Y16_N22
\clkTemporizador|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~20_combout\ = (\clkTemporizador|cuenta\(11) & (\clkTemporizador|Add0~19\ $ (GND))) # (!\clkTemporizador|cuenta\(11) & (!\clkTemporizador|Add0~19\ & VCC))
-- \clkTemporizador|Add0~21\ = CARRY((\clkTemporizador|cuenta\(11) & !\clkTemporizador|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkTemporizador|cuenta\(11),
	datad => VCC,
	cin => \clkTemporizador|Add0~19\,
	combout => \clkTemporizador|Add0~20_combout\,
	cout => \clkTemporizador|Add0~21\);

-- Location: LCCOMB_X28_Y15_N26
\clkTemporizador|cuenta~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|cuenta~10_combout\ = (\clkTemporizador|Add0~20_combout\ & ((!\clkTemporizador|Equal0~8_combout\) # (!\clkTemporizador|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|Equal0~2_combout\,
	datab => \clkTemporizador|Equal0~8_combout\,
	datad => \clkTemporizador|Add0~20_combout\,
	combout => \clkTemporizador|cuenta~10_combout\);

-- Location: FF_X28_Y15_N27
\clkTemporizador|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|cuenta~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(11));

-- Location: LCCOMB_X29_Y16_N24
\clkTemporizador|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~22_combout\ = (\clkTemporizador|cuenta\(12) & (!\clkTemporizador|Add0~21\)) # (!\clkTemporizador|cuenta\(12) & ((\clkTemporizador|Add0~21\) # (GND)))
-- \clkTemporizador|Add0~23\ = CARRY((!\clkTemporizador|Add0~21\) # (!\clkTemporizador|cuenta\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(12),
	datad => VCC,
	cin => \clkTemporizador|Add0~21\,
	combout => \clkTemporizador|Add0~22_combout\,
	cout => \clkTemporizador|Add0~23\);

-- Location: LCCOMB_X28_Y15_N0
\clkTemporizador|cuenta~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|cuenta~9_combout\ = (\clkTemporizador|Add0~22_combout\ & ((!\clkTemporizador|Equal0~8_combout\) # (!\clkTemporizador|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|Equal0~2_combout\,
	datab => \clkTemporizador|Equal0~8_combout\,
	datad => \clkTemporizador|Add0~22_combout\,
	combout => \clkTemporizador|cuenta~9_combout\);

-- Location: FF_X28_Y15_N1
\clkTemporizador|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|cuenta~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(12));

-- Location: LCCOMB_X29_Y16_N26
\clkTemporizador|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~24_combout\ = (\clkTemporizador|cuenta\(13) & (\clkTemporizador|Add0~23\ $ (GND))) # (!\clkTemporizador|cuenta\(13) & (!\clkTemporizador|Add0~23\ & VCC))
-- \clkTemporizador|Add0~25\ = CARRY((\clkTemporizador|cuenta\(13) & !\clkTemporizador|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(13),
	datad => VCC,
	cin => \clkTemporizador|Add0~23\,
	combout => \clkTemporizador|Add0~24_combout\,
	cout => \clkTemporizador|Add0~25\);

-- Location: LCCOMB_X28_Y15_N14
\clkTemporizador|cuenta~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|cuenta~8_combout\ = (\clkTemporizador|Add0~24_combout\ & ((!\clkTemporizador|Equal0~8_combout\) # (!\clkTemporizador|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|Equal0~2_combout\,
	datab => \clkTemporizador|Equal0~8_combout\,
	datad => \clkTemporizador|Add0~24_combout\,
	combout => \clkTemporizador|cuenta~8_combout\);

-- Location: FF_X28_Y15_N15
\clkTemporizador|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|cuenta~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(13));

-- Location: LCCOMB_X29_Y16_N28
\clkTemporizador|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~26_combout\ = (\clkTemporizador|cuenta\(14) & (!\clkTemporizador|Add0~25\)) # (!\clkTemporizador|cuenta\(14) & ((\clkTemporizador|Add0~25\) # (GND)))
-- \clkTemporizador|Add0~27\ = CARRY((!\clkTemporizador|Add0~25\) # (!\clkTemporizador|cuenta\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(14),
	datad => VCC,
	cin => \clkTemporizador|Add0~25\,
	combout => \clkTemporizador|Add0~26_combout\,
	cout => \clkTemporizador|Add0~27\);

-- Location: LCCOMB_X28_Y15_N18
\clkTemporizador|cuenta~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|cuenta~7_combout\ = (\clkTemporizador|Add0~26_combout\ & ((!\clkTemporizador|Equal0~8_combout\) # (!\clkTemporizador|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|Equal0~2_combout\,
	datab => \clkTemporizador|Equal0~8_combout\,
	datad => \clkTemporizador|Add0~26_combout\,
	combout => \clkTemporizador|cuenta~7_combout\);

-- Location: FF_X28_Y15_N19
\clkTemporizador|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|cuenta~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(14));

-- Location: LCCOMB_X29_Y16_N30
\clkTemporizador|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~28_combout\ = (\clkTemporizador|cuenta\(15) & (\clkTemporizador|Add0~27\ $ (GND))) # (!\clkTemporizador|cuenta\(15) & (!\clkTemporizador|Add0~27\ & VCC))
-- \clkTemporizador|Add0~29\ = CARRY((\clkTemporizador|cuenta\(15) & !\clkTemporizador|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(15),
	datad => VCC,
	cin => \clkTemporizador|Add0~27\,
	combout => \clkTemporizador|Add0~28_combout\,
	cout => \clkTemporizador|Add0~29\);

-- Location: FF_X29_Y16_N31
\clkTemporizador|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(15));

-- Location: LCCOMB_X29_Y15_N0
\clkTemporizador|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~30_combout\ = (\clkTemporizador|cuenta\(16) & (!\clkTemporizador|Add0~29\)) # (!\clkTemporizador|cuenta\(16) & ((\clkTemporizador|Add0~29\) # (GND)))
-- \clkTemporizador|Add0~31\ = CARRY((!\clkTemporizador|Add0~29\) # (!\clkTemporizador|cuenta\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(16),
	datad => VCC,
	cin => \clkTemporizador|Add0~29\,
	combout => \clkTemporizador|Add0~30_combout\,
	cout => \clkTemporizador|Add0~31\);

-- Location: LCCOMB_X28_Y15_N16
\clkTemporizador|cuenta~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|cuenta~6_combout\ = (\clkTemporizador|Add0~30_combout\ & ((!\clkTemporizador|Equal0~2_combout\) # (!\clkTemporizador|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkTemporizador|Equal0~8_combout\,
	datac => \clkTemporizador|Add0~30_combout\,
	datad => \clkTemporizador|Equal0~2_combout\,
	combout => \clkTemporizador|cuenta~6_combout\);

-- Location: FF_X28_Y15_N17
\clkTemporizador|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|cuenta~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(16));

-- Location: LCCOMB_X29_Y15_N2
\clkTemporizador|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~32_combout\ = (\clkTemporizador|cuenta\(17) & (\clkTemporizador|Add0~31\ $ (GND))) # (!\clkTemporizador|cuenta\(17) & (!\clkTemporizador|Add0~31\ & VCC))
-- \clkTemporizador|Add0~33\ = CARRY((\clkTemporizador|cuenta\(17) & !\clkTemporizador|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkTemporizador|cuenta\(17),
	datad => VCC,
	cin => \clkTemporizador|Add0~31\,
	combout => \clkTemporizador|Add0~32_combout\,
	cout => \clkTemporizador|Add0~33\);

-- Location: FF_X29_Y15_N3
\clkTemporizador|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(17));

-- Location: LCCOMB_X29_Y15_N4
\clkTemporizador|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~34_combout\ = (\clkTemporizador|cuenta\(18) & (!\clkTemporizador|Add0~33\)) # (!\clkTemporizador|cuenta\(18) & ((\clkTemporizador|Add0~33\) # (GND)))
-- \clkTemporizador|Add0~35\ = CARRY((!\clkTemporizador|Add0~33\) # (!\clkTemporizador|cuenta\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(18),
	datad => VCC,
	cin => \clkTemporizador|Add0~33\,
	combout => \clkTemporizador|Add0~34_combout\,
	cout => \clkTemporizador|Add0~35\);

-- Location: LCCOMB_X28_Y15_N8
\clkTemporizador|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|cuenta~5_combout\ = (\clkTemporizador|Add0~34_combout\ & ((!\clkTemporizador|Equal0~8_combout\) # (!\clkTemporizador|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|Equal0~2_combout\,
	datab => \clkTemporizador|Equal0~8_combout\,
	datad => \clkTemporizador|Add0~34_combout\,
	combout => \clkTemporizador|cuenta~5_combout\);

-- Location: FF_X28_Y15_N9
\clkTemporizador|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(18));

-- Location: LCCOMB_X29_Y15_N6
\clkTemporizador|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~36_combout\ = (\clkTemporizador|cuenta\(19) & (\clkTemporizador|Add0~35\ $ (GND))) # (!\clkTemporizador|cuenta\(19) & (!\clkTemporizador|Add0~35\ & VCC))
-- \clkTemporizador|Add0~37\ = CARRY((\clkTemporizador|cuenta\(19) & !\clkTemporizador|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkTemporizador|cuenta\(19),
	datad => VCC,
	cin => \clkTemporizador|Add0~35\,
	combout => \clkTemporizador|Add0~36_combout\,
	cout => \clkTemporizador|Add0~37\);

-- Location: LCCOMB_X28_Y15_N22
\clkTemporizador|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|cuenta~4_combout\ = (\clkTemporizador|Add0~36_combout\ & ((!\clkTemporizador|Equal0~8_combout\) # (!\clkTemporizador|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|Equal0~2_combout\,
	datab => \clkTemporizador|Equal0~8_combout\,
	datac => \clkTemporizador|Add0~36_combout\,
	combout => \clkTemporizador|cuenta~4_combout\);

-- Location: FF_X28_Y15_N23
\clkTemporizador|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(19));

-- Location: LCCOMB_X29_Y15_N8
\clkTemporizador|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~38_combout\ = (\clkTemporizador|cuenta\(20) & (!\clkTemporizador|Add0~37\)) # (!\clkTemporizador|cuenta\(20) & ((\clkTemporizador|Add0~37\) # (GND)))
-- \clkTemporizador|Add0~39\ = CARRY((!\clkTemporizador|Add0~37\) # (!\clkTemporizador|cuenta\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(20),
	datad => VCC,
	cin => \clkTemporizador|Add0~37\,
	combout => \clkTemporizador|Add0~38_combout\,
	cout => \clkTemporizador|Add0~39\);

-- Location: LCCOMB_X28_Y15_N12
\clkTemporizador|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|cuenta~3_combout\ = (\clkTemporizador|Add0~38_combout\ & ((!\clkTemporizador|Equal0~2_combout\) # (!\clkTemporizador|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkTemporizador|Equal0~8_combout\,
	datac => \clkTemporizador|Add0~38_combout\,
	datad => \clkTemporizador|Equal0~2_combout\,
	combout => \clkTemporizador|cuenta~3_combout\);

-- Location: FF_X28_Y15_N13
\clkTemporizador|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(20));

-- Location: LCCOMB_X29_Y15_N10
\clkTemporizador|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~40_combout\ = (\clkTemporizador|cuenta\(21) & (\clkTemporizador|Add0~39\ $ (GND))) # (!\clkTemporizador|cuenta\(21) & (!\clkTemporizador|Add0~39\ & VCC))
-- \clkTemporizador|Add0~41\ = CARRY((\clkTemporizador|cuenta\(21) & !\clkTemporizador|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkTemporizador|cuenta\(21),
	datad => VCC,
	cin => \clkTemporizador|Add0~39\,
	combout => \clkTemporizador|Add0~40_combout\,
	cout => \clkTemporizador|Add0~41\);

-- Location: LCCOMB_X28_Y15_N6
\clkTemporizador|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|cuenta~2_combout\ = (\clkTemporizador|Add0~40_combout\ & ((!\clkTemporizador|Equal0~2_combout\) # (!\clkTemporizador|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkTemporizador|Equal0~8_combout\,
	datac => \clkTemporizador|Add0~40_combout\,
	datad => \clkTemporizador|Equal0~2_combout\,
	combout => \clkTemporizador|cuenta~2_combout\);

-- Location: FF_X28_Y15_N7
\clkTemporizador|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(21));

-- Location: LCCOMB_X28_Y15_N30
\clkTemporizador|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Equal0~3_combout\ = (\clkTemporizador|cuenta\(20) & (\clkTemporizador|cuenta\(18) & (\clkTemporizador|cuenta\(19) & \clkTemporizador|cuenta\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(20),
	datab => \clkTemporizador|cuenta\(18),
	datac => \clkTemporizador|cuenta\(19),
	datad => \clkTemporizador|cuenta\(21),
	combout => \clkTemporizador|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y15_N28
\clkTemporizador|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Equal0~4_combout\ = (!\clkTemporizador|cuenta\(17) & (\clkTemporizador|cuenta\(16) & (!\clkTemporizador|cuenta\(15) & \clkTemporizador|cuenta\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(17),
	datab => \clkTemporizador|cuenta\(16),
	datac => \clkTemporizador|cuenta\(15),
	datad => \clkTemporizador|cuenta\(14),
	combout => \clkTemporizador|Equal0~4_combout\);

-- Location: LCCOMB_X28_Y15_N4
\clkTemporizador|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Equal0~5_combout\ = (\clkTemporizador|cuenta\(11) & (\clkTemporizador|cuenta\(12) & (\clkTemporizador|cuenta\(13) & !\clkTemporizador|cuenta\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(11),
	datab => \clkTemporizador|cuenta\(12),
	datac => \clkTemporizador|cuenta\(13),
	datad => \clkTemporizador|cuenta\(10),
	combout => \clkTemporizador|Equal0~5_combout\);

-- Location: LCCOMB_X28_Y16_N12
\clkTemporizador|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Equal0~6_combout\ = (!\clkTemporizador|cuenta\(9) & (!\clkTemporizador|cuenta\(7) & (\clkTemporizador|cuenta\(6) & !\clkTemporizador|cuenta\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(9),
	datab => \clkTemporizador|cuenta\(7),
	datac => \clkTemporizador|cuenta\(6),
	datad => \clkTemporizador|cuenta\(8),
	combout => \clkTemporizador|Equal0~6_combout\);

-- Location: LCCOMB_X28_Y15_N10
\clkTemporizador|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Equal0~7_combout\ = (\clkTemporizador|Equal0~3_combout\ & (\clkTemporizador|Equal0~4_combout\ & (\clkTemporizador|Equal0~5_combout\ & \clkTemporizador|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|Equal0~3_combout\,
	datab => \clkTemporizador|Equal0~4_combout\,
	datac => \clkTemporizador|Equal0~5_combout\,
	datad => \clkTemporizador|Equal0~6_combout\,
	combout => \clkTemporizador|Equal0~7_combout\);

-- Location: LCCOMB_X28_Y15_N20
\clkTemporizador|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Equal0~8_combout\ = (!\clkTemporizador|cuenta\(5) & (!\clkTemporizador|cuenta\(30) & (!\clkTemporizador|cuenta\(31) & \clkTemporizador|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(5),
	datab => \clkTemporizador|cuenta\(30),
	datac => \clkTemporizador|cuenta\(31),
	datad => \clkTemporizador|Equal0~7_combout\,
	combout => \clkTemporizador|Equal0~8_combout\);

-- Location: LCCOMB_X29_Y15_N12
\clkTemporizador|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Add0~42_combout\ = (\clkTemporizador|cuenta\(22) & (!\clkTemporizador|Add0~41\)) # (!\clkTemporizador|cuenta\(22) & ((\clkTemporizador|Add0~41\) # (GND)))
-- \clkTemporizador|Add0~43\ = CARRY((!\clkTemporizador|Add0~41\) # (!\clkTemporizador|cuenta\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(22),
	datad => VCC,
	cin => \clkTemporizador|Add0~41\,
	combout => \clkTemporizador|Add0~42_combout\,
	cout => \clkTemporizador|Add0~43\);

-- Location: LCCOMB_X28_Y15_N24
\clkTemporizador|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|cuenta~1_combout\ = (\clkTemporizador|Add0~42_combout\ & ((!\clkTemporizador|Equal0~2_combout\) # (!\clkTemporizador|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkTemporizador|Equal0~8_combout\,
	datac => \clkTemporizador|Add0~42_combout\,
	datad => \clkTemporizador|Equal0~2_combout\,
	combout => \clkTemporizador|cuenta~1_combout\);

-- Location: FF_X28_Y15_N25
\clkTemporizador|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(22));

-- Location: FF_X29_Y15_N15
\clkTemporizador|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkTemporizador|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|cuenta\(23));

-- Location: LCCOMB_X30_Y15_N22
\clkTemporizador|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Equal0~1_combout\ = (!\clkTemporizador|cuenta\(23) & (!\clkTemporizador|cuenta\(25) & (\clkTemporizador|cuenta\(22) & \clkTemporizador|cuenta\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(23),
	datab => \clkTemporizador|cuenta\(25),
	datac => \clkTemporizador|cuenta\(22),
	datad => \clkTemporizador|cuenta\(24),
	combout => \clkTemporizador|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y15_N24
\clkTemporizador|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Equal0~0_combout\ = (!\clkTemporizador|cuenta\(28) & (!\clkTemporizador|cuenta\(27) & (!\clkTemporizador|cuenta\(29) & !\clkTemporizador|cuenta\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|cuenta\(28),
	datab => \clkTemporizador|cuenta\(27),
	datac => \clkTemporizador|cuenta\(29),
	datad => \clkTemporizador|cuenta\(26),
	combout => \clkTemporizador|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y15_N12
\clkTemporizador|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|Equal0~2_combout\ = (\clkTemporizador|Equal0~1_combout\ & (\clkTemporizador|Equal0~0_combout\ & (\clkBeep|Equal0~0_combout\ & !\clkBeep|cuenta\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|Equal0~1_combout\,
	datab => \clkTemporizador|Equal0~0_combout\,
	datac => \clkBeep|Equal0~0_combout\,
	datad => \clkBeep|cuenta\(4),
	combout => \clkTemporizador|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y15_N28
\clkTemporizador|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkTemporizador|salida~0_combout\ = \clkTemporizador|salida~q\ $ (((\clkTemporizador|Equal0~2_combout\ & \clkTemporizador|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkTemporizador|Equal0~2_combout\,
	datac => \clkTemporizador|salida~q\,
	datad => \clkTemporizador|Equal0~8_combout\,
	combout => \clkTemporizador|salida~0_combout\);

-- Location: FF_X30_Y15_N11
\clkTemporizador|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clkTemporizador|salida~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkTemporizador|salida~q\);

-- Location: CLKCTRL_G5
\clkTemporizador|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkTemporizador|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkTemporizador|salida~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y9_N0
\Reinicio|contador[0]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[0]~93_combout\ = !\Reinicio|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reinicio|contador\(0),
	combout => \Reinicio|contador[0]~93_combout\);

-- Location: IOIBUF_X16_Y24_N22
\authHuella~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_authHuella,
	o => \authHuella~input_o\);

-- Location: LCCOMB_X30_Y10_N16
\funcCLAVE|clave_ingresada~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|clave_ingresada~1_combout\ = ((\btn2~input_o\ & !\btn3~input_o\)) # (!\btn1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn2~input_o\,
	datac => \btn3~input_o\,
	datad => \btn1~input_o\,
	combout => \funcCLAVE|clave_ingresada~1_combout\);

-- Location: FF_X30_Y10_N17
\funcCLAVE|clave_ingresada[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkClave|ALT_INV_salida~clkctrl_outclk\,
	d => \funcCLAVE|clave_ingresada~1_combout\,
	clrn => \funcCLAVE|ALT_INV_process_0~0_combout\,
	ena => \funcCLAVE|beepSound~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \funcCLAVE|clave_ingresada[5][0]~q\);

-- Location: LCCOMB_X31_Y10_N24
\funcCLAVE|clave_ingresada~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|clave_ingresada~0_combout\ = (\btn1~input_o\ & ((!\btn2~input_o\) # (!\btn3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn3~input_o\,
	datab => \btn2~input_o\,
	datac => \btn1~input_o\,
	combout => \funcCLAVE|clave_ingresada~0_combout\);

-- Location: FF_X31_Y10_N25
\funcCLAVE|clave_ingresada[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkClave|ALT_INV_salida~clkctrl_outclk\,
	d => \funcCLAVE|clave_ingresada~0_combout\,
	clrn => \funcCLAVE|ALT_INV_process_0~0_combout\,
	ena => \funcCLAVE|beepSound~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \funcCLAVE|clave_ingresada[5][1]~q\);

-- Location: LCCOMB_X30_Y10_N0
\funcCLAVE|clave_ingresada~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|clave_ingresada~2_combout\ = (\btn2~input_o\ & (\btn3~input_o\ & \btn1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn2~input_o\,
	datac => \btn3~input_o\,
	datad => \btn1~input_o\,
	combout => \funcCLAVE|clave_ingresada~2_combout\);

-- Location: FF_X30_Y10_N1
\funcCLAVE|clave_ingresada[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkClave|ALT_INV_salida~clkctrl_outclk\,
	d => \funcCLAVE|clave_ingresada~2_combout\,
	clrn => \funcCLAVE|ALT_INV_process_0~0_combout\,
	ena => \funcCLAVE|beepSound~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \funcCLAVE|clave_ingresada[5][2]~q\);

-- Location: FF_X30_Y10_N29
\funcCLAVE|clave_ingresada[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkClave|ALT_INV_salida~clkctrl_outclk\,
	asdata => \funcCLAVE|clave_ingresada[5][2]~q\,
	clrn => \funcCLAVE|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \funcCLAVE|beepSound~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \funcCLAVE|clave_ingresada[4][2]~q\);

-- Location: LCCOMB_X29_Y10_N16
\funcCLAVE|clave_ingresada[3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|clave_ingresada[3][2]~feeder_combout\ = \funcCLAVE|clave_ingresada[4][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \funcCLAVE|clave_ingresada[4][2]~q\,
	combout => \funcCLAVE|clave_ingresada[3][2]~feeder_combout\);

-- Location: FF_X29_Y10_N17
\funcCLAVE|clave_ingresada[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkClave|ALT_INV_salida~clkctrl_outclk\,
	d => \funcCLAVE|clave_ingresada[3][2]~feeder_combout\,
	clrn => \funcCLAVE|ALT_INV_process_0~0_combout\,
	ena => \funcCLAVE|beepSound~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \funcCLAVE|clave_ingresada[3][2]~q\);

-- Location: LCCOMB_X30_Y10_N14
\funcCLAVE|clave_ingresada[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|clave_ingresada[2][2]~feeder_combout\ = \funcCLAVE|clave_ingresada[3][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \funcCLAVE|clave_ingresada[3][2]~q\,
	combout => \funcCLAVE|clave_ingresada[2][2]~feeder_combout\);

-- Location: FF_X30_Y10_N15
\funcCLAVE|clave_ingresada[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkClave|ALT_INV_salida~clkctrl_outclk\,
	d => \funcCLAVE|clave_ingresada[2][2]~feeder_combout\,
	clrn => \funcCLAVE|ALT_INV_process_0~0_combout\,
	ena => \funcCLAVE|beepSound~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \funcCLAVE|clave_ingresada[2][2]~q\);

-- Location: FF_X30_Y10_N23
\funcCLAVE|clave_ingresada[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkClave|ALT_INV_salida~clkctrl_outclk\,
	asdata => \funcCLAVE|clave_ingresada[2][2]~q\,
	clrn => \funcCLAVE|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \funcCLAVE|beepSound~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \funcCLAVE|clave_ingresada[1][2]~q\);

-- Location: LCCOMB_X30_Y10_N10
\funcCLAVE|clave_ingresada[4][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|clave_ingresada[4][0]~feeder_combout\ = \funcCLAVE|clave_ingresada[5][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \funcCLAVE|clave_ingresada[5][0]~q\,
	combout => \funcCLAVE|clave_ingresada[4][0]~feeder_combout\);

-- Location: FF_X30_Y10_N11
\funcCLAVE|clave_ingresada[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkClave|ALT_INV_salida~clkctrl_outclk\,
	d => \funcCLAVE|clave_ingresada[4][0]~feeder_combout\,
	clrn => \funcCLAVE|ALT_INV_process_0~0_combout\,
	ena => \funcCLAVE|beepSound~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \funcCLAVE|clave_ingresada[4][0]~q\);

-- Location: LCCOMB_X30_Y10_N18
\funcCLAVE|clave_ingresada[3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|clave_ingresada[3][0]~feeder_combout\ = \funcCLAVE|clave_ingresada[4][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \funcCLAVE|clave_ingresada[4][0]~q\,
	combout => \funcCLAVE|clave_ingresada[3][0]~feeder_combout\);

-- Location: FF_X30_Y10_N19
\funcCLAVE|clave_ingresada[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkClave|ALT_INV_salida~clkctrl_outclk\,
	d => \funcCLAVE|clave_ingresada[3][0]~feeder_combout\,
	clrn => \funcCLAVE|ALT_INV_process_0~0_combout\,
	ena => \funcCLAVE|beepSound~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \funcCLAVE|clave_ingresada[3][0]~q\);

-- Location: LCCOMB_X29_Y10_N10
\funcCLAVE|clave_ingresada[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|clave_ingresada[2][0]~feeder_combout\ = \funcCLAVE|clave_ingresada[3][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \funcCLAVE|clave_ingresada[3][0]~q\,
	combout => \funcCLAVE|clave_ingresada[2][0]~feeder_combout\);

-- Location: FF_X29_Y10_N11
\funcCLAVE|clave_ingresada[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkClave|ALT_INV_salida~clkctrl_outclk\,
	d => \funcCLAVE|clave_ingresada[2][0]~feeder_combout\,
	clrn => \funcCLAVE|ALT_INV_process_0~0_combout\,
	ena => \funcCLAVE|beepSound~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \funcCLAVE|clave_ingresada[2][0]~q\);

-- Location: LCCOMB_X29_Y10_N12
\funcCLAVE|clave_ingresada[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|clave_ingresada[1][0]~feeder_combout\ = \funcCLAVE|clave_ingresada[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \funcCLAVE|clave_ingresada[2][0]~q\,
	combout => \funcCLAVE|clave_ingresada[1][0]~feeder_combout\);

-- Location: FF_X29_Y10_N13
\funcCLAVE|clave_ingresada[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkClave|ALT_INV_salida~clkctrl_outclk\,
	d => \funcCLAVE|clave_ingresada[1][0]~feeder_combout\,
	clrn => \funcCLAVE|ALT_INV_process_0~0_combout\,
	ena => \funcCLAVE|beepSound~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \funcCLAVE|clave_ingresada[1][0]~q\);

-- Location: LCCOMB_X29_Y10_N6
\funcCLAVE|clave_ingresada[0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|clave_ingresada[0][0]~feeder_combout\ = \funcCLAVE|clave_ingresada[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \funcCLAVE|clave_ingresada[1][0]~q\,
	combout => \funcCLAVE|clave_ingresada[0][0]~feeder_combout\);

-- Location: FF_X29_Y10_N7
\funcCLAVE|clave_ingresada[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkClave|ALT_INV_salida~clkctrl_outclk\,
	d => \funcCLAVE|clave_ingresada[0][0]~feeder_combout\,
	clrn => \funcCLAVE|ALT_INV_process_0~0_combout\,
	ena => \funcCLAVE|beepSound~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \funcCLAVE|clave_ingresada[0][0]~q\);

-- Location: LCCOMB_X30_Y10_N6
\funcCLAVE|clave_ingresada[4][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|clave_ingresada[4][1]~feeder_combout\ = \funcCLAVE|clave_ingresada[5][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \funcCLAVE|clave_ingresada[5][1]~q\,
	combout => \funcCLAVE|clave_ingresada[4][1]~feeder_combout\);

-- Location: FF_X30_Y10_N7
\funcCLAVE|clave_ingresada[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkClave|ALT_INV_salida~clkctrl_outclk\,
	d => \funcCLAVE|clave_ingresada[4][1]~feeder_combout\,
	clrn => \funcCLAVE|ALT_INV_process_0~0_combout\,
	ena => \funcCLAVE|beepSound~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \funcCLAVE|clave_ingresada[4][1]~q\);

-- Location: LCCOMB_X30_Y10_N8
\funcCLAVE|clave_ingresada[3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|clave_ingresada[3][1]~feeder_combout\ = \funcCLAVE|clave_ingresada[4][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \funcCLAVE|clave_ingresada[4][1]~q\,
	combout => \funcCLAVE|clave_ingresada[3][1]~feeder_combout\);

-- Location: FF_X30_Y10_N9
\funcCLAVE|clave_ingresada[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkClave|ALT_INV_salida~clkctrl_outclk\,
	d => \funcCLAVE|clave_ingresada[3][1]~feeder_combout\,
	clrn => \funcCLAVE|ALT_INV_process_0~0_combout\,
	ena => \funcCLAVE|beepSound~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \funcCLAVE|clave_ingresada[3][1]~q\);

-- Location: FF_X30_Y10_N3
\funcCLAVE|clave_ingresada[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkClave|ALT_INV_salida~clkctrl_outclk\,
	asdata => \funcCLAVE|clave_ingresada[3][1]~q\,
	clrn => \funcCLAVE|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \funcCLAVE|beepSound~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \funcCLAVE|clave_ingresada[2][1]~q\);

-- Location: LCCOMB_X30_Y10_N26
\funcCLAVE|clave_ingresada[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|clave_ingresada[1][1]~feeder_combout\ = \funcCLAVE|clave_ingresada[2][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \funcCLAVE|clave_ingresada[2][1]~q\,
	combout => \funcCLAVE|clave_ingresada[1][1]~feeder_combout\);

-- Location: FF_X30_Y10_N27
\funcCLAVE|clave_ingresada[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkClave|ALT_INV_salida~clkctrl_outclk\,
	d => \funcCLAVE|clave_ingresada[1][1]~feeder_combout\,
	clrn => \funcCLAVE|ALT_INV_process_0~0_combout\,
	ena => \funcCLAVE|beepSound~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \funcCLAVE|clave_ingresada[1][1]~q\);

-- Location: FF_X30_Y10_N31
\funcCLAVE|clave_ingresada[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkClave|ALT_INV_salida~clkctrl_outclk\,
	asdata => \funcCLAVE|clave_ingresada[1][1]~q\,
	clrn => \funcCLAVE|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \funcCLAVE|beepSound~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \funcCLAVE|clave_ingresada[0][1]~q\);

-- Location: LCCOMB_X31_Y10_N22
\funcCLAVE|clave_ingresada[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|clave_ingresada[0][2]~feeder_combout\ = \funcCLAVE|clave_ingresada[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \funcCLAVE|clave_ingresada[1][2]~q\,
	combout => \funcCLAVE|clave_ingresada[0][2]~feeder_combout\);

-- Location: FF_X31_Y10_N23
\funcCLAVE|clave_ingresada[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkClave|ALT_INV_salida~clkctrl_outclk\,
	d => \funcCLAVE|clave_ingresada[0][2]~feeder_combout\,
	clrn => \funcCLAVE|ALT_INV_process_0~0_combout\,
	ena => \funcCLAVE|beepSound~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \funcCLAVE|clave_ingresada[0][2]~q\);

-- Location: LCCOMB_X30_Y10_N30
\funcCLAVE|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|salida~0_combout\ = (!\funcCLAVE|clave_ingresada[1][2]~q\ & (\funcCLAVE|clave_ingresada[0][0]~q\ & (!\funcCLAVE|clave_ingresada[0][1]~q\ & !\funcCLAVE|clave_ingresada[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funcCLAVE|clave_ingresada[1][2]~q\,
	datab => \funcCLAVE|clave_ingresada[0][0]~q\,
	datac => \funcCLAVE|clave_ingresada[0][1]~q\,
	datad => \funcCLAVE|clave_ingresada[0][2]~q\,
	combout => \funcCLAVE|salida~0_combout\);

-- Location: LCCOMB_X30_Y10_N28
\funcCLAVE|salida~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|salida~3_combout\ = (!\funcCLAVE|clave_ingresada[4][1]~q\ & (\funcCLAVE|clave_ingresada[5][2]~q\ & (\funcCLAVE|clave_ingresada[4][2]~q\ & !\funcCLAVE|clave_ingresada[4][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funcCLAVE|clave_ingresada[4][1]~q\,
	datab => \funcCLAVE|clave_ingresada[5][2]~q\,
	datac => \funcCLAVE|clave_ingresada[4][2]~q\,
	datad => \funcCLAVE|clave_ingresada[4][0]~q\,
	combout => \funcCLAVE|salida~3_combout\);

-- Location: LCCOMB_X30_Y10_N2
\funcCLAVE|salida~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|salida~2_combout\ = (\funcCLAVE|clave_ingresada[3][2]~q\ & (!\funcCLAVE|clave_ingresada[3][0]~q\ & (!\funcCLAVE|clave_ingresada[3][1]~q\ & \funcCLAVE|clave_ingresada[2][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funcCLAVE|clave_ingresada[3][2]~q\,
	datab => \funcCLAVE|clave_ingresada[3][0]~q\,
	datac => \funcCLAVE|clave_ingresada[3][1]~q\,
	datad => \funcCLAVE|clave_ingresada[2][0]~q\,
	combout => \funcCLAVE|salida~2_combout\);

-- Location: LCCOMB_X30_Y10_N22
\funcCLAVE|salida~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|salida~1_combout\ = (\funcCLAVE|clave_ingresada[1][1]~q\ & (\funcCLAVE|clave_ingresada[2][1]~q\ & (!\funcCLAVE|clave_ingresada[2][2]~q\ & !\funcCLAVE|clave_ingresada[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funcCLAVE|clave_ingresada[1][1]~q\,
	datab => \funcCLAVE|clave_ingresada[2][1]~q\,
	datac => \funcCLAVE|clave_ingresada[2][2]~q\,
	datad => \funcCLAVE|clave_ingresada[1][0]~q\,
	combout => \funcCLAVE|salida~1_combout\);

-- Location: LCCOMB_X30_Y10_N12
\funcCLAVE|salida~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|salida~4_combout\ = (\funcCLAVE|salida~0_combout\ & (\funcCLAVE|salida~3_combout\ & (\funcCLAVE|salida~2_combout\ & \funcCLAVE|salida~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funcCLAVE|salida~0_combout\,
	datab => \funcCLAVE|salida~3_combout\,
	datac => \funcCLAVE|salida~2_combout\,
	datad => \funcCLAVE|salida~1_combout\,
	combout => \funcCLAVE|salida~4_combout\);

-- Location: LCCOMB_X30_Y10_N20
\ledG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledG~0_combout\ = ((\funcCLAVE|clave_ingresada[5][0]~q\) # ((\funcCLAVE|clave_ingresada[5][1]~q\) # (!\funcCLAVE|salida~4_combout\))) # (!\authHuella~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \authHuella~input_o\,
	datab => \funcCLAVE|clave_ingresada[5][0]~q\,
	datac => \funcCLAVE|clave_ingresada[5][1]~q\,
	datad => \funcCLAVE|salida~4_combout\,
	combout => \ledG~0_combout\);

-- Location: FF_X29_Y9_N1
\Reinicio|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[0]~93_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(0));

-- Location: LCCOMB_X29_Y9_N2
\Reinicio|contador[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[1]~31_combout\ = (\Reinicio|contador\(1) & (\Reinicio|contador\(0) $ (VCC))) # (!\Reinicio|contador\(1) & (\Reinicio|contador\(0) & VCC))
-- \Reinicio|contador[1]~32\ = CARRY((\Reinicio|contador\(1) & \Reinicio|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(1),
	datab => \Reinicio|contador\(0),
	datad => VCC,
	combout => \Reinicio|contador[1]~31_combout\,
	cout => \Reinicio|contador[1]~32\);

-- Location: FF_X29_Y9_N3
\Reinicio|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[1]~31_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(1));

-- Location: LCCOMB_X29_Y9_N4
\Reinicio|contador[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[2]~33_combout\ = (\Reinicio|contador\(2) & (!\Reinicio|contador[1]~32\)) # (!\Reinicio|contador\(2) & ((\Reinicio|contador[1]~32\) # (GND)))
-- \Reinicio|contador[2]~34\ = CARRY((!\Reinicio|contador[1]~32\) # (!\Reinicio|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reinicio|contador\(2),
	datad => VCC,
	cin => \Reinicio|contador[1]~32\,
	combout => \Reinicio|contador[2]~33_combout\,
	cout => \Reinicio|contador[2]~34\);

-- Location: FF_X29_Y9_N5
\Reinicio|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[2]~33_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(2));

-- Location: LCCOMB_X29_Y9_N6
\Reinicio|contador[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[3]~35_combout\ = (\Reinicio|contador\(3) & (\Reinicio|contador[2]~34\ $ (GND))) # (!\Reinicio|contador\(3) & (!\Reinicio|contador[2]~34\ & VCC))
-- \Reinicio|contador[3]~36\ = CARRY((\Reinicio|contador\(3) & !\Reinicio|contador[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(3),
	datad => VCC,
	cin => \Reinicio|contador[2]~34\,
	combout => \Reinicio|contador[3]~35_combout\,
	cout => \Reinicio|contador[3]~36\);

-- Location: FF_X29_Y9_N7
\Reinicio|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[3]~35_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(3));

-- Location: LCCOMB_X29_Y9_N8
\Reinicio|contador[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[4]~37_combout\ = (\Reinicio|contador\(4) & (!\Reinicio|contador[3]~36\)) # (!\Reinicio|contador\(4) & ((\Reinicio|contador[3]~36\) # (GND)))
-- \Reinicio|contador[4]~38\ = CARRY((!\Reinicio|contador[3]~36\) # (!\Reinicio|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reinicio|contador\(4),
	datad => VCC,
	cin => \Reinicio|contador[3]~36\,
	combout => \Reinicio|contador[4]~37_combout\,
	cout => \Reinicio|contador[4]~38\);

-- Location: FF_X29_Y9_N9
\Reinicio|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[4]~37_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(4));

-- Location: LCCOMB_X29_Y9_N10
\Reinicio|contador[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[5]~39_combout\ = (\Reinicio|contador\(5) & (\Reinicio|contador[4]~38\ $ (GND))) # (!\Reinicio|contador\(5) & (!\Reinicio|contador[4]~38\ & VCC))
-- \Reinicio|contador[5]~40\ = CARRY((\Reinicio|contador\(5) & !\Reinicio|contador[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(5),
	datad => VCC,
	cin => \Reinicio|contador[4]~38\,
	combout => \Reinicio|contador[5]~39_combout\,
	cout => \Reinicio|contador[5]~40\);

-- Location: FF_X29_Y9_N11
\Reinicio|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[5]~39_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(5));

-- Location: LCCOMB_X29_Y9_N12
\Reinicio|contador[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[6]~41_combout\ = (\Reinicio|contador\(6) & (!\Reinicio|contador[5]~40\)) # (!\Reinicio|contador\(6) & ((\Reinicio|contador[5]~40\) # (GND)))
-- \Reinicio|contador[6]~42\ = CARRY((!\Reinicio|contador[5]~40\) # (!\Reinicio|contador\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(6),
	datad => VCC,
	cin => \Reinicio|contador[5]~40\,
	combout => \Reinicio|contador[6]~41_combout\,
	cout => \Reinicio|contador[6]~42\);

-- Location: FF_X29_Y9_N13
\Reinicio|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[6]~41_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(6));

-- Location: LCCOMB_X29_Y9_N14
\Reinicio|contador[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[7]~43_combout\ = (\Reinicio|contador\(7) & (\Reinicio|contador[6]~42\ $ (GND))) # (!\Reinicio|contador\(7) & (!\Reinicio|contador[6]~42\ & VCC))
-- \Reinicio|contador[7]~44\ = CARRY((\Reinicio|contador\(7) & !\Reinicio|contador[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reinicio|contador\(7),
	datad => VCC,
	cin => \Reinicio|contador[6]~42\,
	combout => \Reinicio|contador[7]~43_combout\,
	cout => \Reinicio|contador[7]~44\);

-- Location: FF_X29_Y9_N15
\Reinicio|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[7]~43_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(7));

-- Location: LCCOMB_X29_Y9_N16
\Reinicio|contador[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[8]~45_combout\ = (\Reinicio|contador\(8) & (!\Reinicio|contador[7]~44\)) # (!\Reinicio|contador\(8) & ((\Reinicio|contador[7]~44\) # (GND)))
-- \Reinicio|contador[8]~46\ = CARRY((!\Reinicio|contador[7]~44\) # (!\Reinicio|contador\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reinicio|contador\(8),
	datad => VCC,
	cin => \Reinicio|contador[7]~44\,
	combout => \Reinicio|contador[8]~45_combout\,
	cout => \Reinicio|contador[8]~46\);

-- Location: FF_X29_Y9_N17
\Reinicio|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[8]~45_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(8));

-- Location: LCCOMB_X29_Y9_N18
\Reinicio|contador[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[9]~47_combout\ = (\Reinicio|contador\(9) & (\Reinicio|contador[8]~46\ $ (GND))) # (!\Reinicio|contador\(9) & (!\Reinicio|contador[8]~46\ & VCC))
-- \Reinicio|contador[9]~48\ = CARRY((\Reinicio|contador\(9) & !\Reinicio|contador[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reinicio|contador\(9),
	datad => VCC,
	cin => \Reinicio|contador[8]~46\,
	combout => \Reinicio|contador[9]~47_combout\,
	cout => \Reinicio|contador[9]~48\);

-- Location: FF_X29_Y9_N19
\Reinicio|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[9]~47_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(9));

-- Location: LCCOMB_X29_Y9_N20
\Reinicio|contador[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[10]~49_combout\ = (\Reinicio|contador\(10) & (!\Reinicio|contador[9]~48\)) # (!\Reinicio|contador\(10) & ((\Reinicio|contador[9]~48\) # (GND)))
-- \Reinicio|contador[10]~50\ = CARRY((!\Reinicio|contador[9]~48\) # (!\Reinicio|contador\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reinicio|contador\(10),
	datad => VCC,
	cin => \Reinicio|contador[9]~48\,
	combout => \Reinicio|contador[10]~49_combout\,
	cout => \Reinicio|contador[10]~50\);

-- Location: FF_X29_Y9_N21
\Reinicio|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[10]~49_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(10));

-- Location: LCCOMB_X29_Y9_N22
\Reinicio|contador[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[11]~51_combout\ = (\Reinicio|contador\(11) & (\Reinicio|contador[10]~50\ $ (GND))) # (!\Reinicio|contador\(11) & (!\Reinicio|contador[10]~50\ & VCC))
-- \Reinicio|contador[11]~52\ = CARRY((\Reinicio|contador\(11) & !\Reinicio|contador[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(11),
	datad => VCC,
	cin => \Reinicio|contador[10]~50\,
	combout => \Reinicio|contador[11]~51_combout\,
	cout => \Reinicio|contador[11]~52\);

-- Location: FF_X29_Y9_N23
\Reinicio|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[11]~51_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(11));

-- Location: LCCOMB_X29_Y9_N24
\Reinicio|contador[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[12]~53_combout\ = (\Reinicio|contador\(12) & (!\Reinicio|contador[11]~52\)) # (!\Reinicio|contador\(12) & ((\Reinicio|contador[11]~52\) # (GND)))
-- \Reinicio|contador[12]~54\ = CARRY((!\Reinicio|contador[11]~52\) # (!\Reinicio|contador\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reinicio|contador\(12),
	datad => VCC,
	cin => \Reinicio|contador[11]~52\,
	combout => \Reinicio|contador[12]~53_combout\,
	cout => \Reinicio|contador[12]~54\);

-- Location: FF_X29_Y9_N25
\Reinicio|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[12]~53_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(12));

-- Location: LCCOMB_X29_Y9_N26
\Reinicio|contador[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[13]~55_combout\ = (\Reinicio|contador\(13) & (\Reinicio|contador[12]~54\ $ (GND))) # (!\Reinicio|contador\(13) & (!\Reinicio|contador[12]~54\ & VCC))
-- \Reinicio|contador[13]~56\ = CARRY((\Reinicio|contador\(13) & !\Reinicio|contador[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(13),
	datad => VCC,
	cin => \Reinicio|contador[12]~54\,
	combout => \Reinicio|contador[13]~55_combout\,
	cout => \Reinicio|contador[13]~56\);

-- Location: FF_X29_Y9_N27
\Reinicio|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[13]~55_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(13));

-- Location: LCCOMB_X29_Y9_N28
\Reinicio|contador[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[14]~57_combout\ = (\Reinicio|contador\(14) & (!\Reinicio|contador[13]~56\)) # (!\Reinicio|contador\(14) & ((\Reinicio|contador[13]~56\) # (GND)))
-- \Reinicio|contador[14]~58\ = CARRY((!\Reinicio|contador[13]~56\) # (!\Reinicio|contador\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reinicio|contador\(14),
	datad => VCC,
	cin => \Reinicio|contador[13]~56\,
	combout => \Reinicio|contador[14]~57_combout\,
	cout => \Reinicio|contador[14]~58\);

-- Location: FF_X29_Y9_N29
\Reinicio|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[14]~57_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(14));

-- Location: LCCOMB_X29_Y9_N30
\Reinicio|contador[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[15]~59_combout\ = (\Reinicio|contador\(15) & (\Reinicio|contador[14]~58\ $ (GND))) # (!\Reinicio|contador\(15) & (!\Reinicio|contador[14]~58\ & VCC))
-- \Reinicio|contador[15]~60\ = CARRY((\Reinicio|contador\(15) & !\Reinicio|contador[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(15),
	datad => VCC,
	cin => \Reinicio|contador[14]~58\,
	combout => \Reinicio|contador[15]~59_combout\,
	cout => \Reinicio|contador[15]~60\);

-- Location: FF_X29_Y9_N31
\Reinicio|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[15]~59_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(15));

-- Location: LCCOMB_X29_Y8_N0
\Reinicio|contador[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[16]~61_combout\ = (\Reinicio|contador\(16) & (!\Reinicio|contador[15]~60\)) # (!\Reinicio|contador\(16) & ((\Reinicio|contador[15]~60\) # (GND)))
-- \Reinicio|contador[16]~62\ = CARRY((!\Reinicio|contador[15]~60\) # (!\Reinicio|contador\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reinicio|contador\(16),
	datad => VCC,
	cin => \Reinicio|contador[15]~60\,
	combout => \Reinicio|contador[16]~61_combout\,
	cout => \Reinicio|contador[16]~62\);

-- Location: FF_X29_Y8_N1
\Reinicio|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[16]~61_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(16));

-- Location: LCCOMB_X29_Y8_N2
\Reinicio|contador[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[17]~63_combout\ = (\Reinicio|contador\(17) & (\Reinicio|contador[16]~62\ $ (GND))) # (!\Reinicio|contador\(17) & (!\Reinicio|contador[16]~62\ & VCC))
-- \Reinicio|contador[17]~64\ = CARRY((\Reinicio|contador\(17) & !\Reinicio|contador[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reinicio|contador\(17),
	datad => VCC,
	cin => \Reinicio|contador[16]~62\,
	combout => \Reinicio|contador[17]~63_combout\,
	cout => \Reinicio|contador[17]~64\);

-- Location: FF_X29_Y8_N3
\Reinicio|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[17]~63_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(17));

-- Location: LCCOMB_X29_Y8_N4
\Reinicio|contador[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[18]~65_combout\ = (\Reinicio|contador\(18) & (!\Reinicio|contador[17]~64\)) # (!\Reinicio|contador\(18) & ((\Reinicio|contador[17]~64\) # (GND)))
-- \Reinicio|contador[18]~66\ = CARRY((!\Reinicio|contador[17]~64\) # (!\Reinicio|contador\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reinicio|contador\(18),
	datad => VCC,
	cin => \Reinicio|contador[17]~64\,
	combout => \Reinicio|contador[18]~65_combout\,
	cout => \Reinicio|contador[18]~66\);

-- Location: FF_X29_Y8_N5
\Reinicio|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[18]~65_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(18));

-- Location: LCCOMB_X29_Y8_N6
\Reinicio|contador[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[19]~67_combout\ = (\Reinicio|contador\(19) & (\Reinicio|contador[18]~66\ $ (GND))) # (!\Reinicio|contador\(19) & (!\Reinicio|contador[18]~66\ & VCC))
-- \Reinicio|contador[19]~68\ = CARRY((\Reinicio|contador\(19) & !\Reinicio|contador[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(19),
	datad => VCC,
	cin => \Reinicio|contador[18]~66\,
	combout => \Reinicio|contador[19]~67_combout\,
	cout => \Reinicio|contador[19]~68\);

-- Location: FF_X29_Y8_N7
\Reinicio|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[19]~67_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(19));

-- Location: LCCOMB_X29_Y8_N8
\Reinicio|contador[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[20]~69_combout\ = (\Reinicio|contador\(20) & (!\Reinicio|contador[19]~68\)) # (!\Reinicio|contador\(20) & ((\Reinicio|contador[19]~68\) # (GND)))
-- \Reinicio|contador[20]~70\ = CARRY((!\Reinicio|contador[19]~68\) # (!\Reinicio|contador\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reinicio|contador\(20),
	datad => VCC,
	cin => \Reinicio|contador[19]~68\,
	combout => \Reinicio|contador[20]~69_combout\,
	cout => \Reinicio|contador[20]~70\);

-- Location: FF_X29_Y8_N9
\Reinicio|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[20]~69_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(20));

-- Location: LCCOMB_X29_Y8_N10
\Reinicio|contador[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[21]~71_combout\ = (\Reinicio|contador\(21) & (\Reinicio|contador[20]~70\ $ (GND))) # (!\Reinicio|contador\(21) & (!\Reinicio|contador[20]~70\ & VCC))
-- \Reinicio|contador[21]~72\ = CARRY((\Reinicio|contador\(21) & !\Reinicio|contador[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(21),
	datad => VCC,
	cin => \Reinicio|contador[20]~70\,
	combout => \Reinicio|contador[21]~71_combout\,
	cout => \Reinicio|contador[21]~72\);

-- Location: FF_X29_Y8_N11
\Reinicio|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[21]~71_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(21));

-- Location: LCCOMB_X29_Y8_N12
\Reinicio|contador[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[22]~73_combout\ = (\Reinicio|contador\(22) & (!\Reinicio|contador[21]~72\)) # (!\Reinicio|contador\(22) & ((\Reinicio|contador[21]~72\) # (GND)))
-- \Reinicio|contador[22]~74\ = CARRY((!\Reinicio|contador[21]~72\) # (!\Reinicio|contador\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(22),
	datad => VCC,
	cin => \Reinicio|contador[21]~72\,
	combout => \Reinicio|contador[22]~73_combout\,
	cout => \Reinicio|contador[22]~74\);

-- Location: FF_X29_Y8_N13
\Reinicio|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[22]~73_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(22));

-- Location: LCCOMB_X29_Y8_N14
\Reinicio|contador[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[23]~75_combout\ = (\Reinicio|contador\(23) & (\Reinicio|contador[22]~74\ $ (GND))) # (!\Reinicio|contador\(23) & (!\Reinicio|contador[22]~74\ & VCC))
-- \Reinicio|contador[23]~76\ = CARRY((\Reinicio|contador\(23) & !\Reinicio|contador[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reinicio|contador\(23),
	datad => VCC,
	cin => \Reinicio|contador[22]~74\,
	combout => \Reinicio|contador[23]~75_combout\,
	cout => \Reinicio|contador[23]~76\);

-- Location: FF_X29_Y8_N15
\Reinicio|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[23]~75_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(23));

-- Location: LCCOMB_X29_Y8_N16
\Reinicio|contador[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[24]~77_combout\ = (\Reinicio|contador\(24) & (!\Reinicio|contador[23]~76\)) # (!\Reinicio|contador\(24) & ((\Reinicio|contador[23]~76\) # (GND)))
-- \Reinicio|contador[24]~78\ = CARRY((!\Reinicio|contador[23]~76\) # (!\Reinicio|contador\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reinicio|contador\(24),
	datad => VCC,
	cin => \Reinicio|contador[23]~76\,
	combout => \Reinicio|contador[24]~77_combout\,
	cout => \Reinicio|contador[24]~78\);

-- Location: FF_X29_Y8_N17
\Reinicio|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[24]~77_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(24));

-- Location: LCCOMB_X29_Y8_N18
\Reinicio|contador[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[25]~79_combout\ = (\Reinicio|contador\(25) & (\Reinicio|contador[24]~78\ $ (GND))) # (!\Reinicio|contador\(25) & (!\Reinicio|contador[24]~78\ & VCC))
-- \Reinicio|contador[25]~80\ = CARRY((\Reinicio|contador\(25) & !\Reinicio|contador[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reinicio|contador\(25),
	datad => VCC,
	cin => \Reinicio|contador[24]~78\,
	combout => \Reinicio|contador[25]~79_combout\,
	cout => \Reinicio|contador[25]~80\);

-- Location: FF_X29_Y8_N19
\Reinicio|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[25]~79_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(25));

-- Location: LCCOMB_X29_Y8_N20
\Reinicio|contador[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[26]~81_combout\ = (\Reinicio|contador\(26) & (!\Reinicio|contador[25]~80\)) # (!\Reinicio|contador\(26) & ((\Reinicio|contador[25]~80\) # (GND)))
-- \Reinicio|contador[26]~82\ = CARRY((!\Reinicio|contador[25]~80\) # (!\Reinicio|contador\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reinicio|contador\(26),
	datad => VCC,
	cin => \Reinicio|contador[25]~80\,
	combout => \Reinicio|contador[26]~81_combout\,
	cout => \Reinicio|contador[26]~82\);

-- Location: FF_X29_Y8_N21
\Reinicio|contador[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[26]~81_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(26));

-- Location: LCCOMB_X29_Y8_N22
\Reinicio|contador[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[27]~83_combout\ = (\Reinicio|contador\(27) & (\Reinicio|contador[26]~82\ $ (GND))) # (!\Reinicio|contador\(27) & (!\Reinicio|contador[26]~82\ & VCC))
-- \Reinicio|contador[27]~84\ = CARRY((\Reinicio|contador\(27) & !\Reinicio|contador[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(27),
	datad => VCC,
	cin => \Reinicio|contador[26]~82\,
	combout => \Reinicio|contador[27]~83_combout\,
	cout => \Reinicio|contador[27]~84\);

-- Location: FF_X29_Y8_N23
\Reinicio|contador[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[27]~83_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(27));

-- Location: LCCOMB_X29_Y8_N24
\Reinicio|contador[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[28]~85_combout\ = (\Reinicio|contador\(28) & (!\Reinicio|contador[27]~84\)) # (!\Reinicio|contador\(28) & ((\Reinicio|contador[27]~84\) # (GND)))
-- \Reinicio|contador[28]~86\ = CARRY((!\Reinicio|contador[27]~84\) # (!\Reinicio|contador\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reinicio|contador\(28),
	datad => VCC,
	cin => \Reinicio|contador[27]~84\,
	combout => \Reinicio|contador[28]~85_combout\,
	cout => \Reinicio|contador[28]~86\);

-- Location: FF_X29_Y8_N25
\Reinicio|contador[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[28]~85_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(28));

-- Location: LCCOMB_X29_Y8_N26
\Reinicio|contador[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[29]~87_combout\ = (\Reinicio|contador\(29) & (\Reinicio|contador[28]~86\ $ (GND))) # (!\Reinicio|contador\(29) & (!\Reinicio|contador[28]~86\ & VCC))
-- \Reinicio|contador[29]~88\ = CARRY((\Reinicio|contador\(29) & !\Reinicio|contador[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(29),
	datad => VCC,
	cin => \Reinicio|contador[28]~86\,
	combout => \Reinicio|contador[29]~87_combout\,
	cout => \Reinicio|contador[29]~88\);

-- Location: FF_X29_Y8_N27
\Reinicio|contador[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[29]~87_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(29));

-- Location: LCCOMB_X29_Y8_N28
\Reinicio|contador[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[30]~89_combout\ = (\Reinicio|contador\(30) & (!\Reinicio|contador[29]~88\)) # (!\Reinicio|contador\(30) & ((\Reinicio|contador[29]~88\) # (GND)))
-- \Reinicio|contador[30]~90\ = CARRY((!\Reinicio|contador[29]~88\) # (!\Reinicio|contador\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reinicio|contador\(30),
	datad => VCC,
	cin => \Reinicio|contador[29]~88\,
	combout => \Reinicio|contador[30]~89_combout\,
	cout => \Reinicio|contador[30]~90\);

-- Location: FF_X29_Y8_N29
\Reinicio|contador[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[30]~89_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(30));

-- Location: LCCOMB_X29_Y8_N30
\Reinicio|contador[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|contador[31]~91_combout\ = \Reinicio|contador\(31) $ (!\Reinicio|contador[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(31),
	cin => \Reinicio|contador[30]~90\,
	combout => \Reinicio|contador[31]~91_combout\);

-- Location: FF_X29_Y8_N31
\Reinicio|contador[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkTemporizador|ALT_INV_salida~clkctrl_outclk\,
	d => \Reinicio|contador[31]~91_combout\,
	clrn => \ALT_INV_ledG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reinicio|contador\(31));

-- Location: LCCOMB_X29_Y10_N30
\Reinicio|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|LessThan0~0_combout\ = (\Reinicio|contador\(4)) # ((\Reinicio|contador\(3) & ((\Reinicio|contador\(1)) # (\Reinicio|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(3),
	datab => \Reinicio|contador\(1),
	datac => \Reinicio|contador\(2),
	datad => \Reinicio|contador\(4),
	combout => \Reinicio|LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y10_N18
\Reinicio|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|LessThan0~2_combout\ = (\Reinicio|contador\(9)) # ((\Reinicio|contador\(10)) # ((\Reinicio|contador\(11)) # (\Reinicio|contador\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(9),
	datab => \Reinicio|contador\(10),
	datac => \Reinicio|contador\(11),
	datad => \Reinicio|contador\(12),
	combout => \Reinicio|LessThan0~2_combout\);

-- Location: LCCOMB_X29_Y10_N8
\Reinicio|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|LessThan0~3_combout\ = (\Reinicio|contador\(14)) # ((\Reinicio|contador\(16)) # ((\Reinicio|contador\(13)) # (\Reinicio|contador\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(14),
	datab => \Reinicio|contador\(16),
	datac => \Reinicio|contador\(13),
	datad => \Reinicio|contador\(15),
	combout => \Reinicio|LessThan0~3_combout\);

-- Location: LCCOMB_X29_Y10_N24
\Reinicio|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|LessThan0~1_combout\ = (\Reinicio|contador\(8)) # ((\Reinicio|contador\(6)) # ((\Reinicio|contador\(5)) # (\Reinicio|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(8),
	datab => \Reinicio|contador\(6),
	datac => \Reinicio|contador\(5),
	datad => \Reinicio|contador\(7),
	combout => \Reinicio|LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y10_N22
\Reinicio|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|LessThan0~4_combout\ = (\Reinicio|LessThan0~0_combout\) # ((\Reinicio|LessThan0~2_combout\) # ((\Reinicio|LessThan0~3_combout\) # (\Reinicio|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|LessThan0~0_combout\,
	datab => \Reinicio|LessThan0~2_combout\,
	datac => \Reinicio|LessThan0~3_combout\,
	datad => \Reinicio|LessThan0~1_combout\,
	combout => \Reinicio|LessThan0~4_combout\);

-- Location: LCCOMB_X29_Y10_N26
\Reinicio|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|LessThan0~6_combout\ = (\Reinicio|contador\(21)) # ((\Reinicio|contador\(24)) # ((\Reinicio|contador\(23)) # (\Reinicio|contador\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(21),
	datab => \Reinicio|contador\(24),
	datac => \Reinicio|contador\(23),
	datad => \Reinicio|contador\(22),
	combout => \Reinicio|LessThan0~6_combout\);

-- Location: LCCOMB_X29_Y10_N0
\Reinicio|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|LessThan0~5_combout\ = (\Reinicio|contador\(20)) # ((\Reinicio|contador\(17)) # ((\Reinicio|contador\(19)) # (\Reinicio|contador\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(20),
	datab => \Reinicio|contador\(17),
	datac => \Reinicio|contador\(19),
	datad => \Reinicio|contador\(18),
	combout => \Reinicio|LessThan0~5_combout\);

-- Location: LCCOMB_X29_Y10_N14
\Reinicio|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|LessThan0~8_combout\ = (\Reinicio|contador\(30)) # (\Reinicio|contador\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reinicio|contador\(30),
	datad => \Reinicio|contador\(29),
	combout => \Reinicio|LessThan0~8_combout\);

-- Location: LCCOMB_X29_Y10_N20
\Reinicio|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|LessThan0~7_combout\ = (\Reinicio|contador\(28)) # ((\Reinicio|contador\(25)) # ((\Reinicio|contador\(27)) # (\Reinicio|contador\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|contador\(28),
	datab => \Reinicio|contador\(25),
	datac => \Reinicio|contador\(27),
	datad => \Reinicio|contador\(26),
	combout => \Reinicio|LessThan0~7_combout\);

-- Location: LCCOMB_X29_Y10_N28
\Reinicio|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reinicio|LessThan0~9_combout\ = (\Reinicio|LessThan0~6_combout\) # ((\Reinicio|LessThan0~5_combout\) # ((\Reinicio|LessThan0~8_combout\) # (\Reinicio|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reinicio|LessThan0~6_combout\,
	datab => \Reinicio|LessThan0~5_combout\,
	datac => \Reinicio|LessThan0~8_combout\,
	datad => \Reinicio|LessThan0~7_combout\,
	combout => \Reinicio|LessThan0~9_combout\);

-- Location: LCCOMB_X29_Y10_N2
\funcCLAVE|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|process_0~0_combout\ = ((!\Reinicio|contador\(31) & ((\Reinicio|LessThan0~4_combout\) # (\Reinicio|LessThan0~9_combout\)))) # (!\Sensor_listo~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor_listo~input_o\,
	datab => \Reinicio|contador\(31),
	datac => \Reinicio|LessThan0~4_combout\,
	datad => \Reinicio|LessThan0~9_combout\,
	combout => \funcCLAVE|process_0~0_combout\);

-- Location: LCCOMB_X29_Y10_N4
\funcCLAVE|beepSound~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|beepSound~1_combout\ = (\funcCLAVE|process_0~0_combout\ & ((\funcCLAVE|beepSound~q\))) # (!\funcCLAVE|process_0~0_combout\ & (\funcCLAVE|beepSound~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \funcCLAVE|beepSound~0_combout\,
	datac => \funcCLAVE|beepSound~q\,
	datad => \funcCLAVE|process_0~0_combout\,
	combout => \funcCLAVE|beepSound~1_combout\);

-- Location: FF_X29_Y10_N5
\funcCLAVE|beepSound\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkClave|ALT_INV_salida~clkctrl_outclk\,
	d => \funcCLAVE|beepSound~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \funcCLAVE|beepSound~q\);

-- Location: LCCOMB_X31_Y15_N6
\clkBeep|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~38_combout\ = (\clkBeep|cuenta\(19) & (!\clkBeep|Add0~37\)) # (!\clkBeep|cuenta\(19) & ((\clkBeep|Add0~37\) # (GND)))
-- \clkBeep|Add0~39\ = CARRY((!\clkBeep|Add0~37\) # (!\clkBeep|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(19),
	datad => VCC,
	cin => \clkBeep|Add0~37\,
	combout => \clkBeep|Add0~38_combout\,
	cout => \clkBeep|Add0~39\);

-- Location: LCCOMB_X31_Y15_N8
\clkBeep|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~40_combout\ = (\clkBeep|cuenta\(20) & (\clkBeep|Add0~39\ $ (GND))) # (!\clkBeep|cuenta\(20) & (!\clkBeep|Add0~39\ & VCC))
-- \clkBeep|Add0~41\ = CARRY((\clkBeep|cuenta\(20) & !\clkBeep|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(20),
	datad => VCC,
	cin => \clkBeep|Add0~39\,
	combout => \clkBeep|Add0~40_combout\,
	cout => \clkBeep|Add0~41\);

-- Location: FF_X31_Y15_N9
\clkBeep|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(20));

-- Location: LCCOMB_X31_Y15_N10
\clkBeep|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~42_combout\ = (\clkBeep|cuenta\(21) & (!\clkBeep|Add0~41\)) # (!\clkBeep|cuenta\(21) & ((\clkBeep|Add0~41\) # (GND)))
-- \clkBeep|Add0~43\ = CARRY((!\clkBeep|Add0~41\) # (!\clkBeep|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(21),
	datad => VCC,
	cin => \clkBeep|Add0~41\,
	combout => \clkBeep|Add0~42_combout\,
	cout => \clkBeep|Add0~43\);

-- Location: FF_X31_Y15_N11
\clkBeep|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(21));

-- Location: LCCOMB_X31_Y15_N12
\clkBeep|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~44_combout\ = (\clkBeep|cuenta\(22) & (\clkBeep|Add0~43\ $ (GND))) # (!\clkBeep|cuenta\(22) & (!\clkBeep|Add0~43\ & VCC))
-- \clkBeep|Add0~45\ = CARRY((\clkBeep|cuenta\(22) & !\clkBeep|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(22),
	datad => VCC,
	cin => \clkBeep|Add0~43\,
	combout => \clkBeep|Add0~44_combout\,
	cout => \clkBeep|Add0~45\);

-- Location: FF_X31_Y15_N13
\clkBeep|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(22));

-- Location: LCCOMB_X31_Y15_N14
\clkBeep|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~46_combout\ = (\clkBeep|cuenta\(23) & (!\clkBeep|Add0~45\)) # (!\clkBeep|cuenta\(23) & ((\clkBeep|Add0~45\) # (GND)))
-- \clkBeep|Add0~47\ = CARRY((!\clkBeep|Add0~45\) # (!\clkBeep|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(23),
	datad => VCC,
	cin => \clkBeep|Add0~45\,
	combout => \clkBeep|Add0~46_combout\,
	cout => \clkBeep|Add0~47\);

-- Location: FF_X31_Y15_N15
\clkBeep|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(23));

-- Location: LCCOMB_X31_Y15_N16
\clkBeep|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~48_combout\ = (\clkBeep|cuenta\(24) & (\clkBeep|Add0~47\ $ (GND))) # (!\clkBeep|cuenta\(24) & (!\clkBeep|Add0~47\ & VCC))
-- \clkBeep|Add0~49\ = CARRY((\clkBeep|cuenta\(24) & !\clkBeep|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(24),
	datad => VCC,
	cin => \clkBeep|Add0~47\,
	combout => \clkBeep|Add0~48_combout\,
	cout => \clkBeep|Add0~49\);

-- Location: FF_X31_Y15_N17
\clkBeep|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(24));

-- Location: LCCOMB_X31_Y15_N18
\clkBeep|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~50_combout\ = (\clkBeep|cuenta\(25) & (!\clkBeep|Add0~49\)) # (!\clkBeep|cuenta\(25) & ((\clkBeep|Add0~49\) # (GND)))
-- \clkBeep|Add0~51\ = CARRY((!\clkBeep|Add0~49\) # (!\clkBeep|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(25),
	datad => VCC,
	cin => \clkBeep|Add0~49\,
	combout => \clkBeep|Add0~50_combout\,
	cout => \clkBeep|Add0~51\);

-- Location: FF_X31_Y15_N19
\clkBeep|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(25));

-- Location: LCCOMB_X30_Y15_N14
\clkBeep|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Equal0~2_combout\ = (!\clkBeep|cuenta\(24) & (!\clkBeep|cuenta\(23) & (!\clkBeep|cuenta\(22) & !\clkBeep|cuenta\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(24),
	datab => \clkBeep|cuenta\(23),
	datac => \clkBeep|cuenta\(22),
	datad => \clkBeep|cuenta\(25),
	combout => \clkBeep|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y15_N20
\clkBeep|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~52_combout\ = (\clkBeep|cuenta\(26) & (\clkBeep|Add0~51\ $ (GND))) # (!\clkBeep|cuenta\(26) & (!\clkBeep|Add0~51\ & VCC))
-- \clkBeep|Add0~53\ = CARRY((\clkBeep|cuenta\(26) & !\clkBeep|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(26),
	datad => VCC,
	cin => \clkBeep|Add0~51\,
	combout => \clkBeep|Add0~52_combout\,
	cout => \clkBeep|Add0~53\);

-- Location: FF_X31_Y15_N21
\clkBeep|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(26));

-- Location: LCCOMB_X31_Y15_N22
\clkBeep|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~54_combout\ = (\clkBeep|cuenta\(27) & (!\clkBeep|Add0~53\)) # (!\clkBeep|cuenta\(27) & ((\clkBeep|Add0~53\) # (GND)))
-- \clkBeep|Add0~55\ = CARRY((!\clkBeep|Add0~53\) # (!\clkBeep|cuenta\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(27),
	datad => VCC,
	cin => \clkBeep|Add0~53\,
	combout => \clkBeep|Add0~54_combout\,
	cout => \clkBeep|Add0~55\);

-- Location: FF_X31_Y15_N23
\clkBeep|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(27));

-- Location: LCCOMB_X31_Y15_N24
\clkBeep|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~56_combout\ = (\clkBeep|cuenta\(28) & (\clkBeep|Add0~55\ $ (GND))) # (!\clkBeep|cuenta\(28) & (!\clkBeep|Add0~55\ & VCC))
-- \clkBeep|Add0~57\ = CARRY((\clkBeep|cuenta\(28) & !\clkBeep|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(28),
	datad => VCC,
	cin => \clkBeep|Add0~55\,
	combout => \clkBeep|Add0~56_combout\,
	cout => \clkBeep|Add0~57\);

-- Location: FF_X31_Y15_N25
\clkBeep|cuenta[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(28));

-- Location: LCCOMB_X31_Y15_N26
\clkBeep|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~58_combout\ = (\clkBeep|cuenta\(29) & (!\clkBeep|Add0~57\)) # (!\clkBeep|cuenta\(29) & ((\clkBeep|Add0~57\) # (GND)))
-- \clkBeep|Add0~59\ = CARRY((!\clkBeep|Add0~57\) # (!\clkBeep|cuenta\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(29),
	datad => VCC,
	cin => \clkBeep|Add0~57\,
	combout => \clkBeep|Add0~58_combout\,
	cout => \clkBeep|Add0~59\);

-- Location: FF_X31_Y15_N27
\clkBeep|cuenta[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(29));

-- Location: LCCOMB_X30_Y15_N0
\clkBeep|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Equal0~1_combout\ = (!\clkBeep|cuenta\(29) & (!\clkBeep|cuenta\(28) & (!\clkBeep|cuenta\(26) & !\clkBeep|cuenta\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(29),
	datab => \clkBeep|cuenta\(28),
	datac => \clkBeep|cuenta\(26),
	datad => \clkBeep|cuenta\(27),
	combout => \clkBeep|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y16_N28
\clkBeep|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Equal0~3_combout\ = (\clkBeep|Equal0~2_combout\ & (\clkBeep|Equal0~1_combout\ & (!\clkBeep|cuenta\(4) & \clkBeep|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|Equal0~2_combout\,
	datab => \clkBeep|Equal0~1_combout\,
	datac => \clkBeep|cuenta\(4),
	datad => \clkBeep|Equal0~0_combout\,
	combout => \clkBeep|Equal0~3_combout\);

-- Location: LCCOMB_X31_Y16_N10
\clkBeep|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~10_combout\ = (\clkBeep|cuenta\(5) & (!\clkBeep|Add0~9\)) # (!\clkBeep|cuenta\(5) & ((\clkBeep|Add0~9\) # (GND)))
-- \clkBeep|Add0~11\ = CARRY((!\clkBeep|Add0~9\) # (!\clkBeep|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(5),
	datad => VCC,
	cin => \clkBeep|Add0~9\,
	combout => \clkBeep|Add0~10_combout\,
	cout => \clkBeep|Add0~11\);

-- Location: LCCOMB_X30_Y16_N6
\clkBeep|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|cuenta~0_combout\ = (\clkBeep|Add0~10_combout\ & (((!\clkBeep|Equal0~3_combout\) # (!\clkBeep|Equal0~4_combout\)) # (!\clkBeep|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|Equal0~9_combout\,
	datab => \clkBeep|Equal0~4_combout\,
	datac => \clkBeep|Add0~10_combout\,
	datad => \clkBeep|Equal0~3_combout\,
	combout => \clkBeep|cuenta~0_combout\);

-- Location: FF_X30_Y16_N7
\clkBeep|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(5));

-- Location: LCCOMB_X31_Y15_N28
\clkBeep|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~60_combout\ = (\clkBeep|cuenta\(30) & (\clkBeep|Add0~59\ $ (GND))) # (!\clkBeep|cuenta\(30) & (!\clkBeep|Add0~59\ & VCC))
-- \clkBeep|Add0~61\ = CARRY((\clkBeep|cuenta\(30) & !\clkBeep|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(30),
	datad => VCC,
	cin => \clkBeep|Add0~59\,
	combout => \clkBeep|Add0~60_combout\,
	cout => \clkBeep|Add0~61\);

-- Location: FF_X31_Y15_N29
\clkBeep|cuenta[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(30));

-- Location: LCCOMB_X31_Y15_N30
\clkBeep|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~62_combout\ = \clkBeep|cuenta\(31) $ (\clkBeep|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(31),
	cin => \clkBeep|Add0~61\,
	combout => \clkBeep|Add0~62_combout\);

-- Location: FF_X31_Y15_N31
\clkBeep|cuenta[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(31));

-- Location: LCCOMB_X30_Y16_N4
\clkBeep|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Equal0~4_combout\ = (\clkBeep|cuenta\(5) & (!\clkBeep|cuenta\(30) & !\clkBeep|cuenta\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(5),
	datac => \clkBeep|cuenta\(30),
	datad => \clkBeep|cuenta\(31),
	combout => \clkBeep|Equal0~4_combout\);

-- Location: LCCOMB_X31_Y16_N12
\clkBeep|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~12_combout\ = (\clkBeep|cuenta\(6) & (\clkBeep|Add0~11\ $ (GND))) # (!\clkBeep|cuenta\(6) & (!\clkBeep|Add0~11\ & VCC))
-- \clkBeep|Add0~13\ = CARRY((\clkBeep|cuenta\(6) & !\clkBeep|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(6),
	datad => VCC,
	cin => \clkBeep|Add0~11\,
	combout => \clkBeep|Add0~12_combout\,
	cout => \clkBeep|Add0~13\);

-- Location: FF_X31_Y16_N13
\clkBeep|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(6));

-- Location: LCCOMB_X31_Y16_N14
\clkBeep|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~14_combout\ = (\clkBeep|cuenta\(7) & (!\clkBeep|Add0~13\)) # (!\clkBeep|cuenta\(7) & ((\clkBeep|Add0~13\) # (GND)))
-- \clkBeep|Add0~15\ = CARRY((!\clkBeep|Add0~13\) # (!\clkBeep|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(7),
	datad => VCC,
	cin => \clkBeep|Add0~13\,
	combout => \clkBeep|Add0~14_combout\,
	cout => \clkBeep|Add0~15\);

-- Location: FF_X31_Y16_N15
\clkBeep|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(7));

-- Location: LCCOMB_X31_Y16_N16
\clkBeep|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~16_combout\ = (\clkBeep|cuenta\(8) & (\clkBeep|Add0~15\ $ (GND))) # (!\clkBeep|cuenta\(8) & (!\clkBeep|Add0~15\ & VCC))
-- \clkBeep|Add0~17\ = CARRY((\clkBeep|cuenta\(8) & !\clkBeep|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(8),
	datad => VCC,
	cin => \clkBeep|Add0~15\,
	combout => \clkBeep|Add0~16_combout\,
	cout => \clkBeep|Add0~17\);

-- Location: FF_X31_Y16_N17
\clkBeep|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(8));

-- Location: LCCOMB_X31_Y16_N18
\clkBeep|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~18_combout\ = (\clkBeep|cuenta\(9) & (!\clkBeep|Add0~17\)) # (!\clkBeep|cuenta\(9) & ((\clkBeep|Add0~17\) # (GND)))
-- \clkBeep|Add0~19\ = CARRY((!\clkBeep|Add0~17\) # (!\clkBeep|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(9),
	datad => VCC,
	cin => \clkBeep|Add0~17\,
	combout => \clkBeep|Add0~18_combout\,
	cout => \clkBeep|Add0~19\);

-- Location: LCCOMB_X30_Y16_N0
\clkBeep|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|cuenta~4_combout\ = (\clkBeep|Add0~18_combout\ & (((!\clkBeep|Equal0~4_combout\) # (!\clkBeep|Equal0~3_combout\)) # (!\clkBeep|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|Equal0~9_combout\,
	datab => \clkBeep|Equal0~3_combout\,
	datac => \clkBeep|Equal0~4_combout\,
	datad => \clkBeep|Add0~18_combout\,
	combout => \clkBeep|cuenta~4_combout\);

-- Location: FF_X30_Y16_N1
\clkBeep|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(9));

-- Location: LCCOMB_X31_Y16_N20
\clkBeep|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~20_combout\ = (\clkBeep|cuenta\(10) & (\clkBeep|Add0~19\ $ (GND))) # (!\clkBeep|cuenta\(10) & (!\clkBeep|Add0~19\ & VCC))
-- \clkBeep|Add0~21\ = CARRY((\clkBeep|cuenta\(10) & !\clkBeep|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(10),
	datad => VCC,
	cin => \clkBeep|Add0~19\,
	combout => \clkBeep|Add0~20_combout\,
	cout => \clkBeep|Add0~21\);

-- Location: LCCOMB_X30_Y16_N16
\clkBeep|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|cuenta~3_combout\ = (\clkBeep|Add0~20_combout\ & (((!\clkBeep|Equal0~3_combout\) # (!\clkBeep|Equal0~4_combout\)) # (!\clkBeep|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|Equal0~9_combout\,
	datab => \clkBeep|Equal0~4_combout\,
	datac => \clkBeep|Add0~20_combout\,
	datad => \clkBeep|Equal0~3_combout\,
	combout => \clkBeep|cuenta~3_combout\);

-- Location: FF_X30_Y16_N17
\clkBeep|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(10));

-- Location: LCCOMB_X31_Y16_N22
\clkBeep|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~22_combout\ = (\clkBeep|cuenta\(11) & (!\clkBeep|Add0~21\)) # (!\clkBeep|cuenta\(11) & ((\clkBeep|Add0~21\) # (GND)))
-- \clkBeep|Add0~23\ = CARRY((!\clkBeep|Add0~21\) # (!\clkBeep|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(11),
	datad => VCC,
	cin => \clkBeep|Add0~21\,
	combout => \clkBeep|Add0~22_combout\,
	cout => \clkBeep|Add0~23\);

-- Location: LCCOMB_X30_Y16_N22
\clkBeep|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|cuenta~2_combout\ = (\clkBeep|Add0~22_combout\ & (((!\clkBeep|Equal0~4_combout\) # (!\clkBeep|Equal0~3_combout\)) # (!\clkBeep|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|Equal0~9_combout\,
	datab => \clkBeep|Equal0~3_combout\,
	datac => \clkBeep|Equal0~4_combout\,
	datad => \clkBeep|Add0~22_combout\,
	combout => \clkBeep|cuenta~2_combout\);

-- Location: FF_X30_Y16_N23
\clkBeep|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(11));

-- Location: LCCOMB_X31_Y16_N24
\clkBeep|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~24_combout\ = (\clkBeep|cuenta\(12) & (\clkBeep|Add0~23\ $ (GND))) # (!\clkBeep|cuenta\(12) & (!\clkBeep|Add0~23\ & VCC))
-- \clkBeep|Add0~25\ = CARRY((\clkBeep|cuenta\(12) & !\clkBeep|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(12),
	datad => VCC,
	cin => \clkBeep|Add0~23\,
	combout => \clkBeep|Add0~24_combout\,
	cout => \clkBeep|Add0~25\);

-- Location: FF_X31_Y16_N25
\clkBeep|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(12));

-- Location: LCCOMB_X31_Y16_N26
\clkBeep|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~26_combout\ = (\clkBeep|cuenta\(13) & (!\clkBeep|Add0~25\)) # (!\clkBeep|cuenta\(13) & ((\clkBeep|Add0~25\) # (GND)))
-- \clkBeep|Add0~27\ = CARRY((!\clkBeep|Add0~25\) # (!\clkBeep|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(13),
	datad => VCC,
	cin => \clkBeep|Add0~25\,
	combout => \clkBeep|Add0~26_combout\,
	cout => \clkBeep|Add0~27\);

-- Location: FF_X31_Y16_N27
\clkBeep|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(13));

-- Location: LCCOMB_X31_Y16_N28
\clkBeep|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~28_combout\ = (\clkBeep|cuenta\(14) & (\clkBeep|Add0~27\ $ (GND))) # (!\clkBeep|cuenta\(14) & (!\clkBeep|Add0~27\ & VCC))
-- \clkBeep|Add0~29\ = CARRY((\clkBeep|cuenta\(14) & !\clkBeep|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(14),
	datad => VCC,
	cin => \clkBeep|Add0~27\,
	combout => \clkBeep|Add0~28_combout\,
	cout => \clkBeep|Add0~29\);

-- Location: LCCOMB_X30_Y16_N10
\clkBeep|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|cuenta~1_combout\ = (\clkBeep|Add0~28_combout\ & (((!\clkBeep|Equal0~4_combout\) # (!\clkBeep|Equal0~3_combout\)) # (!\clkBeep|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|Equal0~9_combout\,
	datab => \clkBeep|Equal0~3_combout\,
	datac => \clkBeep|Equal0~4_combout\,
	datad => \clkBeep|Add0~28_combout\,
	combout => \clkBeep|cuenta~1_combout\);

-- Location: FF_X30_Y16_N11
\clkBeep|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(14));

-- Location: LCCOMB_X31_Y16_N30
\clkBeep|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~30_combout\ = (\clkBeep|cuenta\(15) & (!\clkBeep|Add0~29\)) # (!\clkBeep|cuenta\(15) & ((\clkBeep|Add0~29\) # (GND)))
-- \clkBeep|Add0~31\ = CARRY((!\clkBeep|Add0~29\) # (!\clkBeep|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(15),
	datad => VCC,
	cin => \clkBeep|Add0~29\,
	combout => \clkBeep|Add0~30_combout\,
	cout => \clkBeep|Add0~31\);

-- Location: FF_X31_Y16_N31
\clkBeep|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(15));

-- Location: LCCOMB_X31_Y15_N0
\clkBeep|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~32_combout\ = (\clkBeep|cuenta\(16) & (\clkBeep|Add0~31\ $ (GND))) # (!\clkBeep|cuenta\(16) & (!\clkBeep|Add0~31\ & VCC))
-- \clkBeep|Add0~33\ = CARRY((\clkBeep|cuenta\(16) & !\clkBeep|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(16),
	datad => VCC,
	cin => \clkBeep|Add0~31\,
	combout => \clkBeep|Add0~32_combout\,
	cout => \clkBeep|Add0~33\);

-- Location: FF_X31_Y15_N1
\clkBeep|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(16));

-- Location: LCCOMB_X31_Y15_N2
\clkBeep|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~34_combout\ = (\clkBeep|cuenta\(17) & (!\clkBeep|Add0~33\)) # (!\clkBeep|cuenta\(17) & ((\clkBeep|Add0~33\) # (GND)))
-- \clkBeep|Add0~35\ = CARRY((!\clkBeep|Add0~33\) # (!\clkBeep|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(17),
	datad => VCC,
	cin => \clkBeep|Add0~33\,
	combout => \clkBeep|Add0~34_combout\,
	cout => \clkBeep|Add0~35\);

-- Location: FF_X31_Y15_N3
\clkBeep|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(17));

-- Location: LCCOMB_X31_Y15_N4
\clkBeep|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Add0~36_combout\ = (\clkBeep|cuenta\(18) & (\clkBeep|Add0~35\ $ (GND))) # (!\clkBeep|cuenta\(18) & (!\clkBeep|Add0~35\ & VCC))
-- \clkBeep|Add0~37\ = CARRY((\clkBeep|cuenta\(18) & !\clkBeep|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkBeep|cuenta\(18),
	datad => VCC,
	cin => \clkBeep|Add0~35\,
	combout => \clkBeep|Add0~36_combout\,
	cout => \clkBeep|Add0~37\);

-- Location: FF_X31_Y15_N5
\clkBeep|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(18));

-- Location: FF_X31_Y15_N7
\clkBeep|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|cuenta\(19));

-- Location: LCCOMB_X30_Y15_N18
\clkBeep|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Equal0~5_combout\ = (!\clkBeep|cuenta\(19) & (!\clkBeep|cuenta\(21) & (!\clkBeep|cuenta\(20) & !\clkBeep|cuenta\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(19),
	datab => \clkBeep|cuenta\(21),
	datac => \clkBeep|cuenta\(20),
	datad => \clkBeep|cuenta\(18),
	combout => \clkBeep|Equal0~5_combout\);

-- Location: LCCOMB_X30_Y16_N18
\clkBeep|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Equal0~7_combout\ = (\clkBeep|cuenta\(10) & (!\clkBeep|cuenta\(12) & (\clkBeep|cuenta\(11) & !\clkBeep|cuenta\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(10),
	datab => \clkBeep|cuenta\(12),
	datac => \clkBeep|cuenta\(11),
	datad => \clkBeep|cuenta\(13),
	combout => \clkBeep|Equal0~7_combout\);

-- Location: LCCOMB_X30_Y16_N26
\clkBeep|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Equal0~8_combout\ = (\clkBeep|cuenta\(9) & (!\clkBeep|cuenta\(6) & (!\clkBeep|cuenta\(7) & !\clkBeep|cuenta\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(9),
	datab => \clkBeep|cuenta\(6),
	datac => \clkBeep|cuenta\(7),
	datad => \clkBeep|cuenta\(8),
	combout => \clkBeep|Equal0~8_combout\);

-- Location: LCCOMB_X30_Y16_N20
\clkBeep|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Equal0~6_combout\ = (\clkBeep|cuenta\(14) & (!\clkBeep|cuenta\(17) & (!\clkBeep|cuenta\(15) & !\clkBeep|cuenta\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|cuenta\(14),
	datab => \clkBeep|cuenta\(17),
	datac => \clkBeep|cuenta\(15),
	datad => \clkBeep|cuenta\(16),
	combout => \clkBeep|Equal0~6_combout\);

-- Location: LCCOMB_X30_Y16_N12
\clkBeep|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|Equal0~9_combout\ = (\clkBeep|Equal0~5_combout\ & (\clkBeep|Equal0~7_combout\ & (\clkBeep|Equal0~8_combout\ & \clkBeep|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|Equal0~5_combout\,
	datab => \clkBeep|Equal0~7_combout\,
	datac => \clkBeep|Equal0~8_combout\,
	datad => \clkBeep|Equal0~6_combout\,
	combout => \clkBeep|Equal0~9_combout\);

-- Location: LCCOMB_X30_Y16_N24
\clkBeep|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkBeep|salida~0_combout\ = \clkBeep|salida~q\ $ (((\clkBeep|Equal0~9_combout\ & (\clkBeep|Equal0~4_combout\ & \clkBeep|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkBeep|Equal0~9_combout\,
	datab => \clkBeep|Equal0~4_combout\,
	datac => \clkBeep|salida~q\,
	datad => \clkBeep|Equal0~3_combout\,
	combout => \clkBeep|salida~0_combout\);

-- Location: FF_X30_Y16_N25
\clkBeep|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkBeep|salida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkBeep|salida~q\);

-- Location: LCCOMB_X30_Y16_N2
\beep~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \beep~0_combout\ = (\funcCLAVE|beepSound~q\ & !\clkBeep|salida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funcCLAVE|beepSound~q\,
	datad => \clkBeep|salida~q\,
	combout => \beep~0_combout\);

-- Location: LCCOMB_X28_Y10_N16
\ledR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledR~0_combout\ = (\funcCLAVE|clave_ingresada[5][1]~q\) # (((\funcCLAVE|clave_ingresada[5][0]~q\) # (!\funcCLAVE|salida~4_combout\)) # (!\Sensor_listo~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funcCLAVE|clave_ingresada[5][1]~q\,
	datab => \Sensor_listo~input_o\,
	datac => \funcCLAVE|salida~4_combout\,
	datad => \funcCLAVE|clave_ingresada[5][0]~q\,
	combout => \ledR~0_combout\);

-- Location: LCCOMB_X28_Y10_N22
\ledG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledG~1_combout\ = (!\Sensor_listo~input_o\) # (!\ledG~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ledG~0_combout\,
	datad => \Sensor_listo~input_o\,
	combout => \ledG~1_combout\);

-- Location: LCCOMB_X28_Y10_N0
\funcCLAVE|salida\ : cycloneive_lcell_comb
-- Equation(s):
-- \funcCLAVE|salida~combout\ = (!\funcCLAVE|clave_ingresada[5][1]~q\ & (\funcCLAVE|salida~4_combout\ & !\funcCLAVE|clave_ingresada[5][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \funcCLAVE|clave_ingresada[5][1]~q\,
	datac => \funcCLAVE|salida~4_combout\,
	datad => \funcCLAVE|clave_ingresada[5][0]~q\,
	combout => \funcCLAVE|salida~combout\);

-- Location: LCCOMB_X28_Y10_N2
\ledB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledB~0_combout\ = ((!\authHuella~input_o\ & \funcCLAVE|salida~combout\)) # (!\Sensor_listo~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \authHuella~input_o\,
	datab => \funcCLAVE|salida~combout\,
	datad => \Sensor_listo~input_o\,
	combout => \ledB~0_combout\);

-- Location: LCCOMB_X11_Y12_N18
\clkServo|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~18_combout\ = (\clkServo|cuenta\(9) & (!\clkServo|Add0~17\)) # (!\clkServo|cuenta\(9) & ((\clkServo|Add0~17\) # (GND)))
-- \clkServo|Add0~19\ = CARRY((!\clkServo|Add0~17\) # (!\clkServo|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|cuenta\(9),
	datad => VCC,
	cin => \clkServo|Add0~17\,
	combout => \clkServo|Add0~18_combout\,
	cout => \clkServo|Add0~19\);

-- Location: LCCOMB_X11_Y12_N20
\clkServo|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~20_combout\ = (\clkServo|cuenta\(10) & (\clkServo|Add0~19\ $ (GND))) # (!\clkServo|cuenta\(10) & (!\clkServo|Add0~19\ & VCC))
-- \clkServo|Add0~21\ = CARRY((\clkServo|cuenta\(10) & !\clkServo|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|cuenta\(10),
	datad => VCC,
	cin => \clkServo|Add0~19\,
	combout => \clkServo|Add0~20_combout\,
	cout => \clkServo|Add0~21\);

-- Location: FF_X11_Y12_N21
\clkServo|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(10));

-- Location: LCCOMB_X11_Y12_N22
\clkServo|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~22_combout\ = (\clkServo|cuenta\(11) & (!\clkServo|Add0~21\)) # (!\clkServo|cuenta\(11) & ((\clkServo|Add0~21\) # (GND)))
-- \clkServo|Add0~23\ = CARRY((!\clkServo|Add0~21\) # (!\clkServo|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(11),
	datad => VCC,
	cin => \clkServo|Add0~21\,
	combout => \clkServo|Add0~22_combout\,
	cout => \clkServo|Add0~23\);

-- Location: FF_X11_Y12_N23
\clkServo|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(11));

-- Location: LCCOMB_X11_Y12_N24
\clkServo|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~24_combout\ = (\clkServo|cuenta\(12) & (\clkServo|Add0~23\ $ (GND))) # (!\clkServo|cuenta\(12) & (!\clkServo|Add0~23\ & VCC))
-- \clkServo|Add0~25\ = CARRY((\clkServo|cuenta\(12) & !\clkServo|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|cuenta\(12),
	datad => VCC,
	cin => \clkServo|Add0~23\,
	combout => \clkServo|Add0~24_combout\,
	cout => \clkServo|Add0~25\);

-- Location: FF_X11_Y12_N25
\clkServo|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(12));

-- Location: LCCOMB_X11_Y12_N26
\clkServo|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~26_combout\ = (\clkServo|cuenta\(13) & (!\clkServo|Add0~25\)) # (!\clkServo|cuenta\(13) & ((\clkServo|Add0~25\) # (GND)))
-- \clkServo|Add0~27\ = CARRY((!\clkServo|Add0~25\) # (!\clkServo|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(13),
	datad => VCC,
	cin => \clkServo|Add0~25\,
	combout => \clkServo|Add0~26_combout\,
	cout => \clkServo|Add0~27\);

-- Location: FF_X11_Y12_N27
\clkServo|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(13));

-- Location: LCCOMB_X11_Y12_N28
\clkServo|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~28_combout\ = (\clkServo|cuenta\(14) & (\clkServo|Add0~27\ $ (GND))) # (!\clkServo|cuenta\(14) & (!\clkServo|Add0~27\ & VCC))
-- \clkServo|Add0~29\ = CARRY((\clkServo|cuenta\(14) & !\clkServo|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|cuenta\(14),
	datad => VCC,
	cin => \clkServo|Add0~27\,
	combout => \clkServo|Add0~28_combout\,
	cout => \clkServo|Add0~29\);

-- Location: FF_X11_Y12_N29
\clkServo|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(14));

-- Location: LCCOMB_X11_Y12_N30
\clkServo|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~30_combout\ = (\clkServo|cuenta\(15) & (!\clkServo|Add0~29\)) # (!\clkServo|cuenta\(15) & ((\clkServo|Add0~29\) # (GND)))
-- \clkServo|Add0~31\ = CARRY((!\clkServo|Add0~29\) # (!\clkServo|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(15),
	datad => VCC,
	cin => \clkServo|Add0~29\,
	combout => \clkServo|Add0~30_combout\,
	cout => \clkServo|Add0~31\);

-- Location: FF_X11_Y12_N31
\clkServo|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(15));

-- Location: LCCOMB_X11_Y11_N0
\clkServo|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~32_combout\ = (\clkServo|cuenta\(16) & (\clkServo|Add0~31\ $ (GND))) # (!\clkServo|cuenta\(16) & (!\clkServo|Add0~31\ & VCC))
-- \clkServo|Add0~33\ = CARRY((\clkServo|cuenta\(16) & !\clkServo|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|cuenta\(16),
	datad => VCC,
	cin => \clkServo|Add0~31\,
	combout => \clkServo|Add0~32_combout\,
	cout => \clkServo|Add0~33\);

-- Location: FF_X11_Y11_N1
\clkServo|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(16));

-- Location: LCCOMB_X11_Y11_N2
\clkServo|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~34_combout\ = (\clkServo|cuenta\(17) & (!\clkServo|Add0~33\)) # (!\clkServo|cuenta\(17) & ((\clkServo|Add0~33\) # (GND)))
-- \clkServo|Add0~35\ = CARRY((!\clkServo|Add0~33\) # (!\clkServo|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|cuenta\(17),
	datad => VCC,
	cin => \clkServo|Add0~33\,
	combout => \clkServo|Add0~34_combout\,
	cout => \clkServo|Add0~35\);

-- Location: FF_X11_Y11_N3
\clkServo|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(17));

-- Location: LCCOMB_X11_Y11_N4
\clkServo|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~36_combout\ = (\clkServo|cuenta\(18) & (\clkServo|Add0~35\ $ (GND))) # (!\clkServo|cuenta\(18) & (!\clkServo|Add0~35\ & VCC))
-- \clkServo|Add0~37\ = CARRY((\clkServo|cuenta\(18) & !\clkServo|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|cuenta\(18),
	datad => VCC,
	cin => \clkServo|Add0~35\,
	combout => \clkServo|Add0~36_combout\,
	cout => \clkServo|Add0~37\);

-- Location: FF_X11_Y11_N5
\clkServo|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(18));

-- Location: LCCOMB_X11_Y11_N6
\clkServo|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~38_combout\ = (\clkServo|cuenta\(19) & (!\clkServo|Add0~37\)) # (!\clkServo|cuenta\(19) & ((\clkServo|Add0~37\) # (GND)))
-- \clkServo|Add0~39\ = CARRY((!\clkServo|Add0~37\) # (!\clkServo|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(19),
	datad => VCC,
	cin => \clkServo|Add0~37\,
	combout => \clkServo|Add0~38_combout\,
	cout => \clkServo|Add0~39\);

-- Location: FF_X11_Y11_N7
\clkServo|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(19));

-- Location: LCCOMB_X11_Y11_N8
\clkServo|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~40_combout\ = (\clkServo|cuenta\(20) & (\clkServo|Add0~39\ $ (GND))) # (!\clkServo|cuenta\(20) & (!\clkServo|Add0~39\ & VCC))
-- \clkServo|Add0~41\ = CARRY((\clkServo|cuenta\(20) & !\clkServo|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|cuenta\(20),
	datad => VCC,
	cin => \clkServo|Add0~39\,
	combout => \clkServo|Add0~40_combout\,
	cout => \clkServo|Add0~41\);

-- Location: FF_X11_Y11_N9
\clkServo|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(20));

-- Location: LCCOMB_X11_Y11_N10
\clkServo|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~42_combout\ = (\clkServo|cuenta\(21) & (!\clkServo|Add0~41\)) # (!\clkServo|cuenta\(21) & ((\clkServo|Add0~41\) # (GND)))
-- \clkServo|Add0~43\ = CARRY((!\clkServo|Add0~41\) # (!\clkServo|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(21),
	datad => VCC,
	cin => \clkServo|Add0~41\,
	combout => \clkServo|Add0~42_combout\,
	cout => \clkServo|Add0~43\);

-- Location: FF_X11_Y11_N11
\clkServo|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(21));

-- Location: LCCOMB_X11_Y11_N12
\clkServo|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~44_combout\ = (\clkServo|cuenta\(22) & (\clkServo|Add0~43\ $ (GND))) # (!\clkServo|cuenta\(22) & (!\clkServo|Add0~43\ & VCC))
-- \clkServo|Add0~45\ = CARRY((\clkServo|cuenta\(22) & !\clkServo|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(22),
	datad => VCC,
	cin => \clkServo|Add0~43\,
	combout => \clkServo|Add0~44_combout\,
	cout => \clkServo|Add0~45\);

-- Location: FF_X11_Y11_N13
\clkServo|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(22));

-- Location: LCCOMB_X11_Y11_N14
\clkServo|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~46_combout\ = (\clkServo|cuenta\(23) & (!\clkServo|Add0~45\)) # (!\clkServo|cuenta\(23) & ((\clkServo|Add0~45\) # (GND)))
-- \clkServo|Add0~47\ = CARRY((!\clkServo|Add0~45\) # (!\clkServo|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|cuenta\(23),
	datad => VCC,
	cin => \clkServo|Add0~45\,
	combout => \clkServo|Add0~46_combout\,
	cout => \clkServo|Add0~47\);

-- Location: FF_X11_Y11_N15
\clkServo|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(23));

-- Location: LCCOMB_X11_Y11_N16
\clkServo|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~48_combout\ = (\clkServo|cuenta\(24) & (\clkServo|Add0~47\ $ (GND))) # (!\clkServo|cuenta\(24) & (!\clkServo|Add0~47\ & VCC))
-- \clkServo|Add0~49\ = CARRY((\clkServo|cuenta\(24) & !\clkServo|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|cuenta\(24),
	datad => VCC,
	cin => \clkServo|Add0~47\,
	combout => \clkServo|Add0~48_combout\,
	cout => \clkServo|Add0~49\);

-- Location: FF_X11_Y11_N17
\clkServo|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(24));

-- Location: LCCOMB_X11_Y11_N18
\clkServo|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~50_combout\ = (\clkServo|cuenta\(25) & (!\clkServo|Add0~49\)) # (!\clkServo|cuenta\(25) & ((\clkServo|Add0~49\) # (GND)))
-- \clkServo|Add0~51\ = CARRY((!\clkServo|Add0~49\) # (!\clkServo|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|cuenta\(25),
	datad => VCC,
	cin => \clkServo|Add0~49\,
	combout => \clkServo|Add0~50_combout\,
	cout => \clkServo|Add0~51\);

-- Location: FF_X11_Y11_N19
\clkServo|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(25));

-- Location: LCCOMB_X10_Y11_N30
\clkServo|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Equal0~1_combout\ = (!\clkServo|cuenta\(24) & (!\clkServo|cuenta\(23) & (!\clkServo|cuenta\(22) & !\clkServo|cuenta\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(24),
	datab => \clkServo|cuenta\(23),
	datac => \clkServo|cuenta\(22),
	datad => \clkServo|cuenta\(25),
	combout => \clkServo|Equal0~1_combout\);

-- Location: LCCOMB_X10_Y12_N20
\clkServo|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Equal0~3_combout\ = (!\clkServo|cuenta\(15) & (!\clkServo|cuenta\(16) & (!\clkServo|cuenta\(17) & !\clkServo|cuenta\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(15),
	datab => \clkServo|cuenta\(16),
	datac => \clkServo|cuenta\(17),
	datad => \clkServo|cuenta\(14),
	combout => \clkServo|Equal0~3_combout\);

-- Location: LCCOMB_X11_Y11_N20
\clkServo|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~52_combout\ = (\clkServo|cuenta\(26) & (\clkServo|Add0~51\ $ (GND))) # (!\clkServo|cuenta\(26) & (!\clkServo|Add0~51\ & VCC))
-- \clkServo|Add0~53\ = CARRY((\clkServo|cuenta\(26) & !\clkServo|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|cuenta\(26),
	datad => VCC,
	cin => \clkServo|Add0~51\,
	combout => \clkServo|Add0~52_combout\,
	cout => \clkServo|Add0~53\);

-- Location: FF_X11_Y11_N21
\clkServo|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(26));

-- Location: LCCOMB_X11_Y11_N22
\clkServo|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~54_combout\ = (\clkServo|cuenta\(27) & (!\clkServo|Add0~53\)) # (!\clkServo|cuenta\(27) & ((\clkServo|Add0~53\) # (GND)))
-- \clkServo|Add0~55\ = CARRY((!\clkServo|Add0~53\) # (!\clkServo|cuenta\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(27),
	datad => VCC,
	cin => \clkServo|Add0~53\,
	combout => \clkServo|Add0~54_combout\,
	cout => \clkServo|Add0~55\);

-- Location: FF_X11_Y11_N23
\clkServo|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(27));

-- Location: LCCOMB_X11_Y11_N24
\clkServo|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~56_combout\ = (\clkServo|cuenta\(28) & (\clkServo|Add0~55\ $ (GND))) # (!\clkServo|cuenta\(28) & (!\clkServo|Add0~55\ & VCC))
-- \clkServo|Add0~57\ = CARRY((\clkServo|cuenta\(28) & !\clkServo|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|cuenta\(28),
	datad => VCC,
	cin => \clkServo|Add0~55\,
	combout => \clkServo|Add0~56_combout\,
	cout => \clkServo|Add0~57\);

-- Location: FF_X11_Y11_N25
\clkServo|cuenta[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(28));

-- Location: LCCOMB_X11_Y11_N26
\clkServo|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~58_combout\ = (\clkServo|cuenta\(29) & (!\clkServo|Add0~57\)) # (!\clkServo|cuenta\(29) & ((\clkServo|Add0~57\) # (GND)))
-- \clkServo|Add0~59\ = CARRY((!\clkServo|Add0~57\) # (!\clkServo|cuenta\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(29),
	datad => VCC,
	cin => \clkServo|Add0~57\,
	combout => \clkServo|Add0~58_combout\,
	cout => \clkServo|Add0~59\);

-- Location: FF_X11_Y11_N27
\clkServo|cuenta[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(29));

-- Location: LCCOMB_X10_Y11_N24
\clkServo|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Equal0~0_combout\ = (!\clkServo|cuenta\(28) & (!\clkServo|cuenta\(27) & (!\clkServo|cuenta\(26) & !\clkServo|cuenta\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(28),
	datab => \clkServo|cuenta\(27),
	datac => \clkServo|cuenta\(26),
	datad => \clkServo|cuenta\(29),
	combout => \clkServo|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y11_N0
\clkServo|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Equal0~2_combout\ = (!\clkServo|cuenta\(18) & (!\clkServo|cuenta\(21) & (!\clkServo|cuenta\(20) & !\clkServo|cuenta\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(18),
	datab => \clkServo|cuenta\(21),
	datac => \clkServo|cuenta\(20),
	datad => \clkServo|cuenta\(19),
	combout => \clkServo|Equal0~2_combout\);

-- Location: LCCOMB_X10_Y12_N24
\clkServo|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Equal0~4_combout\ = (\clkServo|Equal0~1_combout\ & (\clkServo|Equal0~3_combout\ & (\clkServo|Equal0~0_combout\ & \clkServo|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|Equal0~1_combout\,
	datab => \clkServo|Equal0~3_combout\,
	datac => \clkServo|Equal0~0_combout\,
	datad => \clkServo|Equal0~2_combout\,
	combout => \clkServo|Equal0~4_combout\);

-- Location: LCCOMB_X11_Y12_N0
\clkServo|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~0_combout\ = \clkServo|cuenta\(0) $ (GND)
-- \clkServo|Add0~1\ = CARRY(!\clkServo|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|cuenta\(0),
	datad => VCC,
	combout => \clkServo|Add0~0_combout\,
	cout => \clkServo|Add0~1\);

-- Location: LCCOMB_X10_Y12_N6
\clkServo|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|cuenta~3_combout\ = (!\clkServo|Add0~0_combout\ & ((!\clkServo|Equal0~4_combout\) # (!\clkServo|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|Equal0~9_combout\,
	datac => \clkServo|Add0~0_combout\,
	datad => \clkServo|Equal0~4_combout\,
	combout => \clkServo|cuenta~3_combout\);

-- Location: FF_X10_Y12_N7
\clkServo|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(0));

-- Location: LCCOMB_X11_Y12_N2
\clkServo|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~2_combout\ = (\clkServo|cuenta\(1) & (!\clkServo|Add0~1\)) # (!\clkServo|cuenta\(1) & ((\clkServo|Add0~1\) # (GND)))
-- \clkServo|Add0~3\ = CARRY((!\clkServo|Add0~1\) # (!\clkServo|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(1),
	datad => VCC,
	cin => \clkServo|Add0~1\,
	combout => \clkServo|Add0~2_combout\,
	cout => \clkServo|Add0~3\);

-- Location: LCCOMB_X10_Y12_N12
\clkServo|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|cuenta~2_combout\ = (\clkServo|Add0~2_combout\ & ((!\clkServo|Equal0~9_combout\) # (!\clkServo|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|Equal0~4_combout\,
	datac => \clkServo|Equal0~9_combout\,
	datad => \clkServo|Add0~2_combout\,
	combout => \clkServo|cuenta~2_combout\);

-- Location: FF_X10_Y12_N13
\clkServo|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(1));

-- Location: LCCOMB_X11_Y12_N4
\clkServo|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~4_combout\ = (\clkServo|cuenta\(2) & (\clkServo|Add0~3\ $ (GND))) # (!\clkServo|cuenta\(2) & (!\clkServo|Add0~3\ & VCC))
-- \clkServo|Add0~5\ = CARRY((\clkServo|cuenta\(2) & !\clkServo|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|cuenta\(2),
	datad => VCC,
	cin => \clkServo|Add0~3\,
	combout => \clkServo|Add0~4_combout\,
	cout => \clkServo|Add0~5\);

-- Location: FF_X11_Y12_N5
\clkServo|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(2));

-- Location: LCCOMB_X11_Y12_N6
\clkServo|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~6_combout\ = (\clkServo|cuenta\(3) & (!\clkServo|Add0~5\)) # (!\clkServo|cuenta\(3) & ((\clkServo|Add0~5\) # (GND)))
-- \clkServo|Add0~7\ = CARRY((!\clkServo|Add0~5\) # (!\clkServo|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(3),
	datad => VCC,
	cin => \clkServo|Add0~5\,
	combout => \clkServo|Add0~6_combout\,
	cout => \clkServo|Add0~7\);

-- Location: LCCOMB_X10_Y12_N16
\clkServo|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|cuenta~1_combout\ = (\clkServo|Add0~6_combout\ & ((!\clkServo|Equal0~9_combout\) # (!\clkServo|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|Equal0~4_combout\,
	datac => \clkServo|Equal0~9_combout\,
	datad => \clkServo|Add0~6_combout\,
	combout => \clkServo|cuenta~1_combout\);

-- Location: FF_X10_Y12_N17
\clkServo|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(3));

-- Location: LCCOMB_X11_Y12_N8
\clkServo|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~8_combout\ = (\clkServo|cuenta\(4) & (\clkServo|Add0~7\ $ (GND))) # (!\clkServo|cuenta\(4) & (!\clkServo|Add0~7\ & VCC))
-- \clkServo|Add0~9\ = CARRY((\clkServo|cuenta\(4) & !\clkServo|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(4),
	datad => VCC,
	cin => \clkServo|Add0~7\,
	combout => \clkServo|Add0~8_combout\,
	cout => \clkServo|Add0~9\);

-- Location: LCCOMB_X10_Y12_N14
\clkServo|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|cuenta~0_combout\ = (\clkServo|Add0~8_combout\ & ((!\clkServo|Equal0~4_combout\) # (!\clkServo|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|Equal0~9_combout\,
	datac => \clkServo|Add0~8_combout\,
	datad => \clkServo|Equal0~4_combout\,
	combout => \clkServo|cuenta~0_combout\);

-- Location: FF_X10_Y12_N15
\clkServo|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(4));

-- Location: LCCOMB_X11_Y12_N10
\clkServo|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~10_combout\ = (\clkServo|cuenta\(5) & (!\clkServo|Add0~9\)) # (!\clkServo|cuenta\(5) & ((\clkServo|Add0~9\) # (GND)))
-- \clkServo|Add0~11\ = CARRY((!\clkServo|Add0~9\) # (!\clkServo|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(5),
	datad => VCC,
	cin => \clkServo|Add0~9\,
	combout => \clkServo|Add0~10_combout\,
	cout => \clkServo|Add0~11\);

-- Location: FF_X11_Y12_N11
\clkServo|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(5));

-- Location: LCCOMB_X11_Y12_N12
\clkServo|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~12_combout\ = (\clkServo|cuenta\(6) & (\clkServo|Add0~11\ $ (GND))) # (!\clkServo|cuenta\(6) & (!\clkServo|Add0~11\ & VCC))
-- \clkServo|Add0~13\ = CARRY((\clkServo|cuenta\(6) & !\clkServo|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(6),
	datad => VCC,
	cin => \clkServo|Add0~11\,
	combout => \clkServo|Add0~12_combout\,
	cout => \clkServo|Add0~13\);

-- Location: FF_X11_Y12_N13
\clkServo|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(6));

-- Location: LCCOMB_X11_Y12_N14
\clkServo|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~14_combout\ = (\clkServo|cuenta\(7) & (!\clkServo|Add0~13\)) # (!\clkServo|cuenta\(7) & ((\clkServo|Add0~13\) # (GND)))
-- \clkServo|Add0~15\ = CARRY((!\clkServo|Add0~13\) # (!\clkServo|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|cuenta\(7),
	datad => VCC,
	cin => \clkServo|Add0~13\,
	combout => \clkServo|Add0~14_combout\,
	cout => \clkServo|Add0~15\);

-- Location: FF_X11_Y12_N15
\clkServo|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(7));

-- Location: LCCOMB_X11_Y12_N16
\clkServo|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~16_combout\ = (\clkServo|cuenta\(8) & (\clkServo|Add0~15\ $ (GND))) # (!\clkServo|cuenta\(8) & (!\clkServo|Add0~15\ & VCC))
-- \clkServo|Add0~17\ = CARRY((\clkServo|cuenta\(8) & !\clkServo|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|cuenta\(8),
	datad => VCC,
	cin => \clkServo|Add0~15\,
	combout => \clkServo|Add0~16_combout\,
	cout => \clkServo|Add0~17\);

-- Location: FF_X11_Y12_N17
\clkServo|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(8));

-- Location: FF_X11_Y12_N19
\clkServo|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(9));

-- Location: LCCOMB_X10_Y12_N22
\clkServo|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Equal0~6_combout\ = (!\clkServo|cuenta\(9) & (!\clkServo|cuenta\(6) & (!\clkServo|cuenta\(7) & !\clkServo|cuenta\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(9),
	datab => \clkServo|cuenta\(6),
	datac => \clkServo|cuenta\(7),
	datad => \clkServo|cuenta\(8),
	combout => \clkServo|Equal0~6_combout\);

-- Location: LCCOMB_X10_Y12_N28
\clkServo|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Equal0~5_combout\ = (!\clkServo|cuenta\(13) & (!\clkServo|cuenta\(12) & (!\clkServo|cuenta\(10) & !\clkServo|cuenta\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(13),
	datab => \clkServo|cuenta\(12),
	datac => \clkServo|cuenta\(10),
	datad => \clkServo|cuenta\(11),
	combout => \clkServo|Equal0~5_combout\);

-- Location: LCCOMB_X10_Y12_N8
\clkServo|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Equal0~7_combout\ = (!\clkServo|cuenta\(2) & (\clkServo|cuenta\(4) & (!\clkServo|cuenta\(5) & \clkServo|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(2),
	datab => \clkServo|cuenta\(4),
	datac => \clkServo|cuenta\(5),
	datad => \clkServo|cuenta\(3),
	combout => \clkServo|Equal0~7_combout\);

-- Location: LCCOMB_X11_Y11_N28
\clkServo|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~60_combout\ = (\clkServo|cuenta\(30) & (\clkServo|Add0~59\ $ (GND))) # (!\clkServo|cuenta\(30) & (!\clkServo|Add0~59\ & VCC))
-- \clkServo|Add0~61\ = CARRY((\clkServo|cuenta\(30) & !\clkServo|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkServo|cuenta\(30),
	datad => VCC,
	cin => \clkServo|Add0~59\,
	combout => \clkServo|Add0~60_combout\,
	cout => \clkServo|Add0~61\);

-- Location: FF_X11_Y11_N29
\clkServo|cuenta[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(30));

-- Location: LCCOMB_X11_Y11_N30
\clkServo|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Add0~62_combout\ = \clkServo|cuenta\(31) $ (\clkServo|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(31),
	cin => \clkServo|Add0~61\,
	combout => \clkServo|Add0~62_combout\);

-- Location: FF_X11_Y11_N31
\clkServo|cuenta[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|cuenta\(31));

-- Location: LCCOMB_X10_Y12_N18
\clkServo|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Equal0~8_combout\ = (!\clkServo|cuenta\(1) & (!\clkServo|cuenta\(0) & (!\clkServo|cuenta\(30) & !\clkServo|cuenta\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|cuenta\(1),
	datab => \clkServo|cuenta\(0),
	datac => \clkServo|cuenta\(30),
	datad => \clkServo|cuenta\(31),
	combout => \clkServo|Equal0~8_combout\);

-- Location: LCCOMB_X10_Y12_N30
\clkServo|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|Equal0~9_combout\ = (\clkServo|Equal0~6_combout\ & (\clkServo|Equal0~5_combout\ & (\clkServo|Equal0~7_combout\ & \clkServo|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|Equal0~6_combout\,
	datab => \clkServo|Equal0~5_combout\,
	datac => \clkServo|Equal0~7_combout\,
	datad => \clkServo|Equal0~8_combout\,
	combout => \clkServo|Equal0~9_combout\);

-- Location: LCCOMB_X10_Y12_N26
\clkServo|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|salida~0_combout\ = \clkServo|salida~q\ $ (((\clkServo|Equal0~9_combout\ & \clkServo|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkServo|Equal0~9_combout\,
	datac => \clkServo|salida~q\,
	datad => \clkServo|Equal0~4_combout\,
	combout => \clkServo|salida~0_combout\);

-- Location: LCCOMB_X10_Y12_N4
\clkServo|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkServo|salida~feeder_combout\ = \clkServo|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clkServo|salida~0_combout\,
	combout => \clkServo|salida~feeder_combout\);

-- Location: FF_X10_Y12_N5
\clkServo|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkServo|salida~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkServo|salida~q\);

-- Location: CLKCTRL_G3
\clkServo|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkServo|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkServo|salida~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y12_N0
\pwm|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~0_combout\ = \pwm|cuentaCiclo\(0) $ (GND)
-- \pwm|Add0~1\ = CARRY(!\pwm|cuentaCiclo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(0),
	datad => VCC,
	combout => \pwm|Add0~0_combout\,
	cout => \pwm|Add0~1\);

-- Location: LCCOMB_X28_Y10_N24
\pwm|cuentaCiclo[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|cuentaCiclo[0]~5_combout\ = !\pwm|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Add0~0_combout\,
	combout => \pwm|cuentaCiclo[0]~5_combout\);

-- Location: FF_X28_Y10_N25
\pwm|cuentaCiclo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|cuentaCiclo[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(0));

-- Location: LCCOMB_X28_Y12_N2
\pwm|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~2_combout\ = (\pwm|cuentaCiclo\(1) & (!\pwm|Add0~1\)) # (!\pwm|cuentaCiclo\(1) & ((\pwm|Add0~1\) # (GND)))
-- \pwm|Add0~3\ = CARRY((!\pwm|Add0~1\) # (!\pwm|cuentaCiclo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(1),
	datad => VCC,
	cin => \pwm|Add0~1\,
	combout => \pwm|Add0~2_combout\,
	cout => \pwm|Add0~3\);

-- Location: FF_X28_Y12_N3
\pwm|cuentaCiclo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(1));

-- Location: LCCOMB_X28_Y12_N4
\pwm|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~4_combout\ = (\pwm|cuentaCiclo\(2) & (\pwm|Add0~3\ $ (GND))) # (!\pwm|cuentaCiclo\(2) & (!\pwm|Add0~3\ & VCC))
-- \pwm|Add0~5\ = CARRY((\pwm|cuentaCiclo\(2) & !\pwm|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(2),
	datad => VCC,
	cin => \pwm|Add0~3\,
	combout => \pwm|Add0~4_combout\,
	cout => \pwm|Add0~5\);

-- Location: FF_X28_Y12_N5
\pwm|cuentaCiclo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(2));

-- Location: LCCOMB_X28_Y12_N6
\pwm|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~6_combout\ = (\pwm|cuentaCiclo\(3) & (!\pwm|Add0~5\)) # (!\pwm|cuentaCiclo\(3) & ((\pwm|Add0~5\) # (GND)))
-- \pwm|Add0~7\ = CARRY((!\pwm|Add0~5\) # (!\pwm|cuentaCiclo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(3),
	datad => VCC,
	cin => \pwm|Add0~5\,
	combout => \pwm|Add0~6_combout\,
	cout => \pwm|Add0~7\);

-- Location: FF_X28_Y12_N7
\pwm|cuentaCiclo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(3));

-- Location: LCCOMB_X28_Y12_N8
\pwm|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~8_combout\ = (\pwm|cuentaCiclo\(4) & (\pwm|Add0~7\ $ (GND))) # (!\pwm|cuentaCiclo\(4) & (!\pwm|Add0~7\ & VCC))
-- \pwm|Add0~9\ = CARRY((\pwm|cuentaCiclo\(4) & !\pwm|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(4),
	datad => VCC,
	cin => \pwm|Add0~7\,
	combout => \pwm|Add0~8_combout\,
	cout => \pwm|Add0~9\);

-- Location: FF_X28_Y12_N9
\pwm|cuentaCiclo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(4));

-- Location: LCCOMB_X28_Y12_N10
\pwm|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~10_combout\ = (\pwm|cuentaCiclo\(5) & (!\pwm|Add0~9\)) # (!\pwm|cuentaCiclo\(5) & ((\pwm|Add0~9\) # (GND)))
-- \pwm|Add0~11\ = CARRY((!\pwm|Add0~9\) # (!\pwm|cuentaCiclo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(5),
	datad => VCC,
	cin => \pwm|Add0~9\,
	combout => \pwm|Add0~10_combout\,
	cout => \pwm|Add0~11\);

-- Location: LCCOMB_X29_Y12_N24
\pwm|cuentaCiclo~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|cuentaCiclo~3_combout\ = (!\pwm|Equal0~10_combout\ & \pwm|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Equal0~10_combout\,
	datad => \pwm|Add0~10_combout\,
	combout => \pwm|cuentaCiclo~3_combout\);

-- Location: FF_X29_Y12_N25
\pwm|cuentaCiclo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|cuentaCiclo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(5));

-- Location: LCCOMB_X28_Y12_N12
\pwm|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~12_combout\ = (\pwm|cuentaCiclo\(6) & (\pwm|Add0~11\ $ (GND))) # (!\pwm|cuentaCiclo\(6) & (!\pwm|Add0~11\ & VCC))
-- \pwm|Add0~13\ = CARRY((\pwm|cuentaCiclo\(6) & !\pwm|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(6),
	datad => VCC,
	cin => \pwm|Add0~11\,
	combout => \pwm|Add0~12_combout\,
	cout => \pwm|Add0~13\);

-- Location: FF_X28_Y12_N13
\pwm|cuentaCiclo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(6));

-- Location: LCCOMB_X28_Y12_N14
\pwm|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~14_combout\ = (\pwm|cuentaCiclo\(7) & (!\pwm|Add0~13\)) # (!\pwm|cuentaCiclo\(7) & ((\pwm|Add0~13\) # (GND)))
-- \pwm|Add0~15\ = CARRY((!\pwm|Add0~13\) # (!\pwm|cuentaCiclo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(7),
	datad => VCC,
	cin => \pwm|Add0~13\,
	combout => \pwm|Add0~14_combout\,
	cout => \pwm|Add0~15\);

-- Location: FF_X28_Y12_N15
\pwm|cuentaCiclo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(7));

-- Location: LCCOMB_X29_Y12_N12
\pwm|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Equal0~7_combout\ = (!\pwm|cuentaCiclo\(7) & (\pwm|cuentaCiclo\(5) & (!\pwm|cuentaCiclo\(4) & !\pwm|cuentaCiclo\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(7),
	datab => \pwm|cuentaCiclo\(5),
	datac => \pwm|cuentaCiclo\(4),
	datad => \pwm|cuentaCiclo\(6),
	combout => \pwm|Equal0~7_combout\);

-- Location: LCCOMB_X28_Y12_N16
\pwm|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~16_combout\ = (\pwm|cuentaCiclo\(8) & (\pwm|Add0~15\ $ (GND))) # (!\pwm|cuentaCiclo\(8) & (!\pwm|Add0~15\ & VCC))
-- \pwm|Add0~17\ = CARRY((\pwm|cuentaCiclo\(8) & !\pwm|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(8),
	datad => VCC,
	cin => \pwm|Add0~15\,
	combout => \pwm|Add0~16_combout\,
	cout => \pwm|Add0~17\);

-- Location: FF_X28_Y12_N17
\pwm|cuentaCiclo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(8));

-- Location: LCCOMB_X28_Y12_N18
\pwm|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~18_combout\ = (\pwm|cuentaCiclo\(9) & (!\pwm|Add0~17\)) # (!\pwm|cuentaCiclo\(9) & ((\pwm|Add0~17\) # (GND)))
-- \pwm|Add0~19\ = CARRY((!\pwm|Add0~17\) # (!\pwm|cuentaCiclo\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(9),
	datad => VCC,
	cin => \pwm|Add0~17\,
	combout => \pwm|Add0~18_combout\,
	cout => \pwm|Add0~19\);

-- Location: LCCOMB_X29_Y12_N4
\pwm|cuentaCiclo~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|cuentaCiclo~2_combout\ = (!\pwm|Equal0~10_combout\ & \pwm|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Equal0~10_combout\,
	datad => \pwm|Add0~18_combout\,
	combout => \pwm|cuentaCiclo~2_combout\);

-- Location: FF_X29_Y12_N5
\pwm|cuentaCiclo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|cuentaCiclo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(9));

-- Location: LCCOMB_X28_Y12_N20
\pwm|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~20_combout\ = (\pwm|cuentaCiclo\(10) & (\pwm|Add0~19\ $ (GND))) # (!\pwm|cuentaCiclo\(10) & (!\pwm|Add0~19\ & VCC))
-- \pwm|Add0~21\ = CARRY((\pwm|cuentaCiclo\(10) & !\pwm|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(10),
	datad => VCC,
	cin => \pwm|Add0~19\,
	combout => \pwm|Add0~20_combout\,
	cout => \pwm|Add0~21\);

-- Location: LCCOMB_X29_Y12_N2
\pwm|cuentaCiclo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|cuentaCiclo~1_combout\ = (!\pwm|Equal0~10_combout\ & \pwm|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Equal0~10_combout\,
	datad => \pwm|Add0~20_combout\,
	combout => \pwm|cuentaCiclo~1_combout\);

-- Location: FF_X29_Y12_N3
\pwm|cuentaCiclo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|cuentaCiclo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(10));

-- Location: LCCOMB_X28_Y12_N22
\pwm|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~22_combout\ = (\pwm|cuentaCiclo\(11) & (!\pwm|Add0~21\)) # (!\pwm|cuentaCiclo\(11) & ((\pwm|Add0~21\) # (GND)))
-- \pwm|Add0~23\ = CARRY((!\pwm|Add0~21\) # (!\pwm|cuentaCiclo\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(11),
	datad => VCC,
	cin => \pwm|Add0~21\,
	combout => \pwm|Add0~22_combout\,
	cout => \pwm|Add0~23\);

-- Location: LCCOMB_X29_Y12_N20
\pwm|cuentaCiclo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|cuentaCiclo~0_combout\ = (!\pwm|Equal0~10_combout\ & \pwm|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Equal0~10_combout\,
	datad => \pwm|Add0~22_combout\,
	combout => \pwm|cuentaCiclo~0_combout\);

-- Location: FF_X29_Y12_N21
\pwm|cuentaCiclo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|cuentaCiclo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(11));

-- Location: LCCOMB_X28_Y12_N24
\pwm|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~24_combout\ = (\pwm|cuentaCiclo\(12) & (\pwm|Add0~23\ $ (GND))) # (!\pwm|cuentaCiclo\(12) & (!\pwm|Add0~23\ & VCC))
-- \pwm|Add0~25\ = CARRY((\pwm|cuentaCiclo\(12) & !\pwm|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(12),
	datad => VCC,
	cin => \pwm|Add0~23\,
	combout => \pwm|Add0~24_combout\,
	cout => \pwm|Add0~25\);

-- Location: FF_X28_Y12_N25
\pwm|cuentaCiclo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(12));

-- Location: LCCOMB_X28_Y12_N26
\pwm|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~26_combout\ = (\pwm|cuentaCiclo\(13) & (!\pwm|Add0~25\)) # (!\pwm|cuentaCiclo\(13) & ((\pwm|Add0~25\) # (GND)))
-- \pwm|Add0~27\ = CARRY((!\pwm|Add0~25\) # (!\pwm|cuentaCiclo\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(13),
	datad => VCC,
	cin => \pwm|Add0~25\,
	combout => \pwm|Add0~26_combout\,
	cout => \pwm|Add0~27\);

-- Location: FF_X28_Y12_N27
\pwm|cuentaCiclo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(13));

-- Location: LCCOMB_X29_Y11_N12
\pwm|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Equal0~1_combout\ = (!\pwm|cuentaCiclo\(16) & (!\pwm|cuentaCiclo\(13) & (!\pwm|cuentaCiclo\(12) & !\pwm|cuentaCiclo\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(16),
	datab => \pwm|cuentaCiclo\(13),
	datac => \pwm|cuentaCiclo\(12),
	datad => \pwm|cuentaCiclo\(15),
	combout => \pwm|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y11_N4
\pwm|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Equal0~3_combout\ = (!\pwm|cuentaCiclo\(23) & (!\pwm|cuentaCiclo\(22) & (!\pwm|cuentaCiclo\(24) & !\pwm|cuentaCiclo\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(23),
	datab => \pwm|cuentaCiclo\(22),
	datac => \pwm|cuentaCiclo\(24),
	datad => \pwm|cuentaCiclo\(21),
	combout => \pwm|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y11_N30
\pwm|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Equal0~2_combout\ = (!\pwm|cuentaCiclo\(17) & (!\pwm|cuentaCiclo\(18) & (!\pwm|cuentaCiclo\(19) & !\pwm|cuentaCiclo\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(17),
	datab => \pwm|cuentaCiclo\(18),
	datac => \pwm|cuentaCiclo\(19),
	datad => \pwm|cuentaCiclo\(20),
	combout => \pwm|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y11_N18
\pwm|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Equal0~4_combout\ = (!\pwm|cuentaCiclo\(26) & (!\pwm|cuentaCiclo\(25) & (!\pwm|cuentaCiclo\(27) & !\pwm|cuentaCiclo\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(26),
	datab => \pwm|cuentaCiclo\(25),
	datac => \pwm|cuentaCiclo\(27),
	datad => \pwm|cuentaCiclo\(28),
	combout => \pwm|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y11_N16
\pwm|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Equal0~5_combout\ = (\pwm|Equal0~1_combout\ & (\pwm|Equal0~3_combout\ & (\pwm|Equal0~2_combout\ & \pwm|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Equal0~1_combout\,
	datab => \pwm|Equal0~3_combout\,
	datac => \pwm|Equal0~2_combout\,
	datad => \pwm|Equal0~4_combout\,
	combout => \pwm|Equal0~5_combout\);

-- Location: LCCOMB_X29_Y11_N6
\pwm|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Equal0~6_combout\ = (!\pwm|cuentaCiclo\(30) & (!\pwm|cuentaCiclo\(29) & \pwm|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(30),
	datac => \pwm|cuentaCiclo\(29),
	datad => \pwm|Equal0~5_combout\,
	combout => \pwm|Equal0~6_combout\);

-- Location: LCCOMB_X29_Y12_N10
\pwm|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Equal0~8_combout\ = (\pwm|cuentaCiclo\(11) & (\pwm|cuentaCiclo\(9) & (!\pwm|cuentaCiclo\(8) & \pwm|cuentaCiclo\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(11),
	datab => \pwm|cuentaCiclo\(9),
	datac => \pwm|cuentaCiclo\(8),
	datad => \pwm|cuentaCiclo\(10),
	combout => \pwm|Equal0~8_combout\);

-- Location: LCCOMB_X29_Y12_N8
\pwm|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Equal0~9_combout\ = (\pwm|Equal0~8_combout\ & (\pwm|cuentaCiclo\(14) & !\pwm|cuentaCiclo\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Equal0~8_combout\,
	datab => \pwm|cuentaCiclo\(14),
	datad => \pwm|cuentaCiclo\(31),
	combout => \pwm|Equal0~9_combout\);

-- Location: LCCOMB_X28_Y10_N14
\pwm|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Equal0~0_combout\ = (\pwm|cuentaCiclo\(0) & (!\pwm|cuentaCiclo\(3) & (!\pwm|cuentaCiclo\(2) & !\pwm|cuentaCiclo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(0),
	datab => \pwm|cuentaCiclo\(3),
	datac => \pwm|cuentaCiclo\(2),
	datad => \pwm|cuentaCiclo\(1),
	combout => \pwm|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y12_N26
\pwm|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Equal0~10_combout\ = (\pwm|Equal0~7_combout\ & (\pwm|Equal0~6_combout\ & (\pwm|Equal0~9_combout\ & \pwm|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Equal0~7_combout\,
	datab => \pwm|Equal0~6_combout\,
	datac => \pwm|Equal0~9_combout\,
	datad => \pwm|Equal0~0_combout\,
	combout => \pwm|Equal0~10_combout\);

-- Location: LCCOMB_X28_Y12_N28
\pwm|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~28_combout\ = (\pwm|cuentaCiclo\(14) & (\pwm|Add0~27\ $ (GND))) # (!\pwm|cuentaCiclo\(14) & (!\pwm|Add0~27\ & VCC))
-- \pwm|Add0~29\ = CARRY((\pwm|cuentaCiclo\(14) & !\pwm|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(14),
	datad => VCC,
	cin => \pwm|Add0~27\,
	combout => \pwm|Add0~28_combout\,
	cout => \pwm|Add0~29\);

-- Location: LCCOMB_X29_Y12_N28
\pwm|cuentaCiclo~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|cuentaCiclo~4_combout\ = (!\pwm|Equal0~10_combout\ & \pwm|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Equal0~10_combout\,
	datad => \pwm|Add0~28_combout\,
	combout => \pwm|cuentaCiclo~4_combout\);

-- Location: FF_X29_Y12_N29
\pwm|cuentaCiclo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|cuentaCiclo~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(14));

-- Location: LCCOMB_X28_Y12_N30
\pwm|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~30_combout\ = (\pwm|cuentaCiclo\(15) & (!\pwm|Add0~29\)) # (!\pwm|cuentaCiclo\(15) & ((\pwm|Add0~29\) # (GND)))
-- \pwm|Add0~31\ = CARRY((!\pwm|Add0~29\) # (!\pwm|cuentaCiclo\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(15),
	datad => VCC,
	cin => \pwm|Add0~29\,
	combout => \pwm|Add0~30_combout\,
	cout => \pwm|Add0~31\);

-- Location: FF_X28_Y12_N31
\pwm|cuentaCiclo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(15));

-- Location: LCCOMB_X28_Y11_N0
\pwm|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~32_combout\ = (\pwm|cuentaCiclo\(16) & (\pwm|Add0~31\ $ (GND))) # (!\pwm|cuentaCiclo\(16) & (!\pwm|Add0~31\ & VCC))
-- \pwm|Add0~33\ = CARRY((\pwm|cuentaCiclo\(16) & !\pwm|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(16),
	datad => VCC,
	cin => \pwm|Add0~31\,
	combout => \pwm|Add0~32_combout\,
	cout => \pwm|Add0~33\);

-- Location: FF_X28_Y11_N1
\pwm|cuentaCiclo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(16));

-- Location: LCCOMB_X28_Y11_N2
\pwm|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~34_combout\ = (\pwm|cuentaCiclo\(17) & (!\pwm|Add0~33\)) # (!\pwm|cuentaCiclo\(17) & ((\pwm|Add0~33\) # (GND)))
-- \pwm|Add0~35\ = CARRY((!\pwm|Add0~33\) # (!\pwm|cuentaCiclo\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(17),
	datad => VCC,
	cin => \pwm|Add0~33\,
	combout => \pwm|Add0~34_combout\,
	cout => \pwm|Add0~35\);

-- Location: FF_X28_Y11_N3
\pwm|cuentaCiclo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(17));

-- Location: LCCOMB_X28_Y11_N4
\pwm|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~36_combout\ = (\pwm|cuentaCiclo\(18) & (\pwm|Add0~35\ $ (GND))) # (!\pwm|cuentaCiclo\(18) & (!\pwm|Add0~35\ & VCC))
-- \pwm|Add0~37\ = CARRY((\pwm|cuentaCiclo\(18) & !\pwm|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(18),
	datad => VCC,
	cin => \pwm|Add0~35\,
	combout => \pwm|Add0~36_combout\,
	cout => \pwm|Add0~37\);

-- Location: FF_X28_Y11_N5
\pwm|cuentaCiclo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(18));

-- Location: LCCOMB_X28_Y11_N6
\pwm|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~38_combout\ = (\pwm|cuentaCiclo\(19) & (!\pwm|Add0~37\)) # (!\pwm|cuentaCiclo\(19) & ((\pwm|Add0~37\) # (GND)))
-- \pwm|Add0~39\ = CARRY((!\pwm|Add0~37\) # (!\pwm|cuentaCiclo\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(19),
	datad => VCC,
	cin => \pwm|Add0~37\,
	combout => \pwm|Add0~38_combout\,
	cout => \pwm|Add0~39\);

-- Location: FF_X28_Y11_N7
\pwm|cuentaCiclo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(19));

-- Location: LCCOMB_X28_Y11_N8
\pwm|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~40_combout\ = (\pwm|cuentaCiclo\(20) & (\pwm|Add0~39\ $ (GND))) # (!\pwm|cuentaCiclo\(20) & (!\pwm|Add0~39\ & VCC))
-- \pwm|Add0~41\ = CARRY((\pwm|cuentaCiclo\(20) & !\pwm|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(20),
	datad => VCC,
	cin => \pwm|Add0~39\,
	combout => \pwm|Add0~40_combout\,
	cout => \pwm|Add0~41\);

-- Location: FF_X28_Y11_N9
\pwm|cuentaCiclo[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(20));

-- Location: LCCOMB_X28_Y11_N10
\pwm|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~42_combout\ = (\pwm|cuentaCiclo\(21) & (!\pwm|Add0~41\)) # (!\pwm|cuentaCiclo\(21) & ((\pwm|Add0~41\) # (GND)))
-- \pwm|Add0~43\ = CARRY((!\pwm|Add0~41\) # (!\pwm|cuentaCiclo\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(21),
	datad => VCC,
	cin => \pwm|Add0~41\,
	combout => \pwm|Add0~42_combout\,
	cout => \pwm|Add0~43\);

-- Location: FF_X28_Y11_N11
\pwm|cuentaCiclo[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(21));

-- Location: LCCOMB_X28_Y11_N12
\pwm|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~44_combout\ = (\pwm|cuentaCiclo\(22) & (\pwm|Add0~43\ $ (GND))) # (!\pwm|cuentaCiclo\(22) & (!\pwm|Add0~43\ & VCC))
-- \pwm|Add0~45\ = CARRY((\pwm|cuentaCiclo\(22) & !\pwm|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(22),
	datad => VCC,
	cin => \pwm|Add0~43\,
	combout => \pwm|Add0~44_combout\,
	cout => \pwm|Add0~45\);

-- Location: FF_X28_Y11_N13
\pwm|cuentaCiclo[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(22));

-- Location: LCCOMB_X28_Y11_N14
\pwm|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~46_combout\ = (\pwm|cuentaCiclo\(23) & (!\pwm|Add0~45\)) # (!\pwm|cuentaCiclo\(23) & ((\pwm|Add0~45\) # (GND)))
-- \pwm|Add0~47\ = CARRY((!\pwm|Add0~45\) # (!\pwm|cuentaCiclo\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(23),
	datad => VCC,
	cin => \pwm|Add0~45\,
	combout => \pwm|Add0~46_combout\,
	cout => \pwm|Add0~47\);

-- Location: FF_X28_Y11_N15
\pwm|cuentaCiclo[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(23));

-- Location: LCCOMB_X28_Y11_N16
\pwm|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~48_combout\ = (\pwm|cuentaCiclo\(24) & (\pwm|Add0~47\ $ (GND))) # (!\pwm|cuentaCiclo\(24) & (!\pwm|Add0~47\ & VCC))
-- \pwm|Add0~49\ = CARRY((\pwm|cuentaCiclo\(24) & !\pwm|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(24),
	datad => VCC,
	cin => \pwm|Add0~47\,
	combout => \pwm|Add0~48_combout\,
	cout => \pwm|Add0~49\);

-- Location: FF_X28_Y11_N17
\pwm|cuentaCiclo[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(24));

-- Location: LCCOMB_X28_Y11_N18
\pwm|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~50_combout\ = (\pwm|cuentaCiclo\(25) & (!\pwm|Add0~49\)) # (!\pwm|cuentaCiclo\(25) & ((\pwm|Add0~49\) # (GND)))
-- \pwm|Add0~51\ = CARRY((!\pwm|Add0~49\) # (!\pwm|cuentaCiclo\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(25),
	datad => VCC,
	cin => \pwm|Add0~49\,
	combout => \pwm|Add0~50_combout\,
	cout => \pwm|Add0~51\);

-- Location: FF_X28_Y11_N19
\pwm|cuentaCiclo[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(25));

-- Location: LCCOMB_X28_Y11_N20
\pwm|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~52_combout\ = (\pwm|cuentaCiclo\(26) & (\pwm|Add0~51\ $ (GND))) # (!\pwm|cuentaCiclo\(26) & (!\pwm|Add0~51\ & VCC))
-- \pwm|Add0~53\ = CARRY((\pwm|cuentaCiclo\(26) & !\pwm|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(26),
	datad => VCC,
	cin => \pwm|Add0~51\,
	combout => \pwm|Add0~52_combout\,
	cout => \pwm|Add0~53\);

-- Location: FF_X28_Y11_N21
\pwm|cuentaCiclo[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(26));

-- Location: LCCOMB_X28_Y11_N22
\pwm|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~54_combout\ = (\pwm|cuentaCiclo\(27) & (!\pwm|Add0~53\)) # (!\pwm|cuentaCiclo\(27) & ((\pwm|Add0~53\) # (GND)))
-- \pwm|Add0~55\ = CARRY((!\pwm|Add0~53\) # (!\pwm|cuentaCiclo\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(27),
	datad => VCC,
	cin => \pwm|Add0~53\,
	combout => \pwm|Add0~54_combout\,
	cout => \pwm|Add0~55\);

-- Location: FF_X28_Y11_N23
\pwm|cuentaCiclo[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(27));

-- Location: LCCOMB_X28_Y11_N24
\pwm|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~56_combout\ = (\pwm|cuentaCiclo\(28) & (\pwm|Add0~55\ $ (GND))) # (!\pwm|cuentaCiclo\(28) & (!\pwm|Add0~55\ & VCC))
-- \pwm|Add0~57\ = CARRY((\pwm|cuentaCiclo\(28) & !\pwm|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(28),
	datad => VCC,
	cin => \pwm|Add0~55\,
	combout => \pwm|Add0~56_combout\,
	cout => \pwm|Add0~57\);

-- Location: FF_X28_Y11_N25
\pwm|cuentaCiclo[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(28));

-- Location: LCCOMB_X28_Y11_N26
\pwm|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~58_combout\ = (\pwm|cuentaCiclo\(29) & (!\pwm|Add0~57\)) # (!\pwm|cuentaCiclo\(29) & ((\pwm|Add0~57\) # (GND)))
-- \pwm|Add0~59\ = CARRY((!\pwm|Add0~57\) # (!\pwm|cuentaCiclo\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(29),
	datad => VCC,
	cin => \pwm|Add0~57\,
	combout => \pwm|Add0~58_combout\,
	cout => \pwm|Add0~59\);

-- Location: FF_X28_Y11_N27
\pwm|cuentaCiclo[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(29));

-- Location: LCCOMB_X28_Y11_N28
\pwm|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~60_combout\ = (\pwm|cuentaCiclo\(30) & (\pwm|Add0~59\ $ (GND))) # (!\pwm|cuentaCiclo\(30) & (!\pwm|Add0~59\ & VCC))
-- \pwm|Add0~61\ = CARRY((\pwm|cuentaCiclo\(30) & !\pwm|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(30),
	datad => VCC,
	cin => \pwm|Add0~59\,
	combout => \pwm|Add0~60_combout\,
	cout => \pwm|Add0~61\);

-- Location: FF_X28_Y11_N29
\pwm|cuentaCiclo[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(30));

-- Location: LCCOMB_X28_Y11_N30
\pwm|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|Add0~62_combout\ = \pwm|cuentaCiclo\(31) $ (\pwm|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(31),
	cin => \pwm|Add0~61\,
	combout => \pwm|Add0~62_combout\);

-- Location: FF_X28_Y11_N31
\pwm|cuentaCiclo[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|cuentaCiclo\(31));

-- Location: LCCOMB_X29_Y12_N18
\pwm|pwm~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|pwm~8_combout\ = (\pwm|cuentaCiclo\(9)) # ((\pwm|cuentaCiclo\(8)) # (\pwm|cuentaCiclo\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(9),
	datac => \pwm|cuentaCiclo\(8),
	datad => \pwm|cuentaCiclo\(10),
	combout => \pwm|pwm~8_combout\);

-- Location: LCCOMB_X31_Y10_N10
\pwm|pwm~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|pwm~9_combout\ = (\pwm|cuentaCiclo\(14)) # ((\funcCLAVE|clave_ingresada[5][0]~q\) # ((\pwm|cuentaCiclo\(11) & \pwm|pwm~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(14),
	datab => \pwm|cuentaCiclo\(11),
	datac => \funcCLAVE|clave_ingresada[5][0]~q\,
	datad => \pwm|pwm~8_combout\,
	combout => \pwm|pwm~9_combout\);

-- Location: LCCOMB_X30_Y10_N4
\pwm|pwm~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|pwm~10_combout\ = (\funcCLAVE|salida~4_combout\ & (!\funcCLAVE|clave_ingresada[5][1]~q\ & (!\pwm|pwm~9_combout\ & \pwm|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funcCLAVE|salida~4_combout\,
	datab => \funcCLAVE|clave_ingresada[5][1]~q\,
	datac => \pwm|pwm~9_combout\,
	datad => \pwm|Equal0~6_combout\,
	combout => \pwm|pwm~10_combout\);

-- Location: LCCOMB_X28_Y10_N8
\pwm|pwm~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|pwm~3_combout\ = (\pwm|cuentaCiclo\(6) & (\pwm|cuentaCiclo\(2) & ((\pwm|cuentaCiclo\(1)) # (!\pwm|cuentaCiclo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(0),
	datab => \pwm|cuentaCiclo\(6),
	datac => \pwm|cuentaCiclo\(2),
	datad => \pwm|cuentaCiclo\(1),
	combout => \pwm|pwm~3_combout\);

-- Location: LCCOMB_X29_Y12_N14
\pwm|pwm~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|pwm~1_combout\ = (\pwm|cuentaCiclo\(7) & (\pwm|cuentaCiclo\(5) & \pwm|cuentaCiclo\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(7),
	datab => \pwm|cuentaCiclo\(5),
	datad => \pwm|cuentaCiclo\(4),
	combout => \pwm|pwm~1_combout\);

-- Location: LCCOMB_X28_Y10_N10
\pwm|pwm~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|pwm~4_combout\ = ((!\pwm|pwm~1_combout\) # (!\pwm|pwm~3_combout\)) # (!\pwm|cuentaCiclo\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm|cuentaCiclo\(3),
	datac => \pwm|pwm~3_combout\,
	datad => \pwm|pwm~1_combout\,
	combout => \pwm|pwm~4_combout\);

-- Location: LCCOMB_X29_Y12_N30
\pwm|pwm~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|pwm~0_combout\ = (\pwm|cuentaCiclo\(9)) # ((\pwm|cuentaCiclo\(8)) # ((\pwm|cuentaCiclo\(7) & \pwm|cuentaCiclo\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(7),
	datab => \pwm|cuentaCiclo\(9),
	datac => \pwm|cuentaCiclo\(8),
	datad => \pwm|cuentaCiclo\(6),
	combout => \pwm|pwm~0_combout\);

-- Location: LCCOMB_X29_Y12_N16
\pwm|pwm~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|pwm~2_combout\ = ((!\pwm|pwm~0_combout\ & ((\pwm|Equal0~0_combout\) # (!\pwm|pwm~1_combout\)))) # (!\pwm|cuentaCiclo\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(10),
	datab => \pwm|pwm~1_combout\,
	datac => \pwm|pwm~0_combout\,
	datad => \pwm|Equal0~0_combout\,
	combout => \pwm|pwm~2_combout\);

-- Location: LCCOMB_X29_Y12_N6
\pwm|pwm~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|pwm~5_combout\ = (\authHuella~input_o\ & (((\pwm|pwm~4_combout\)) # (!\pwm|cuentaCiclo\(11)))) # (!\authHuella~input_o\ & (!\pwm|cuentaCiclo\(11) & ((\pwm|pwm~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \authHuella~input_o\,
	datab => \pwm|cuentaCiclo\(11),
	datac => \pwm|pwm~4_combout\,
	datad => \pwm|pwm~2_combout\,
	combout => \pwm|pwm~5_combout\);

-- Location: LCCOMB_X29_Y12_N22
\pwm|pwm~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|pwm~6_combout\ = (\pwm|cuentaCiclo\(10) & ((\pwm|pwm~0_combout\) # ((\pwm|pwm~1_combout\ & !\pwm|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(10),
	datab => \pwm|pwm~1_combout\,
	datac => \pwm|pwm~0_combout\,
	datad => \pwm|Equal0~0_combout\,
	combout => \pwm|pwm~6_combout\);

-- Location: LCCOMB_X29_Y12_N0
\pwm|pwm~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|pwm~7_combout\ = (!\pwm|cuentaCiclo\(11) & (!\pwm|cuentaCiclo\(14) & (!\pwm|pwm~6_combout\ & \pwm|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(11),
	datab => \pwm|cuentaCiclo\(14),
	datac => \pwm|pwm~6_combout\,
	datad => \pwm|Equal0~6_combout\,
	combout => \pwm|pwm~7_combout\);

-- Location: LCCOMB_X30_Y10_N24
\pwm|pwm~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm|pwm~11_combout\ = (\pwm|cuentaCiclo\(31)) # ((\pwm|pwm~7_combout\) # ((\pwm|pwm~10_combout\ & \pwm|pwm~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|cuentaCiclo\(31),
	datab => \pwm|pwm~10_combout\,
	datac => \pwm|pwm~5_combout\,
	datad => \pwm|pwm~7_combout\,
	combout => \pwm|pwm~11_combout\);

-- Location: FF_X30_Y10_N25
\pwm|pwm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkServo|ALT_INV_salida~clkctrl_outclk\,
	d => \pwm|pwm~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm~q\);

ww_beep <= \beep~output_o\;

ww_ledR <= \ledR~output_o\;

ww_ledG <= \ledG~output_o\;

ww_ledB <= \ledB~output_o\;

ww_pwmServo <= \pwmServo~output_o\;

ww_Arduino_on <= \Arduino_on~output_o\;

ww_Arduino_clave <= \Arduino_clave~output_o\;
END structure;


