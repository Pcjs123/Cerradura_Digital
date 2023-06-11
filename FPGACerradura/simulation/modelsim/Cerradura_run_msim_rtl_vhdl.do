transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Digital/Proyecto/FPGACerradura/FCV.vhd}
vcom -93 -work work {D:/Digital/Proyecto/FPGACerradura/div_frec.vhd}
vcom -93 -work work {D:/Digital/Proyecto/FPGACerradura/Main.vhd}
vcom -93 -work work {D:/Digital/Proyecto/FPGACerradura/LED.vhd}
vcom -93 -work work {D:/Digital/Proyecto/FPGACerradura/CLAVE.vhd}
vcom -93 -work work {D:/Digital/Proyecto/FPGACerradura/SERVO.vhd}
vcom -93 -work work {D:/Digital/Proyecto/FPGACerradura/Temporizador.vhd}
vcom -93 -work work {D:/Digital/Proyecto/FPGACerradura/Huella.vhd}

