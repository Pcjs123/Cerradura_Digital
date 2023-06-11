
// Esta librería ha sido desarrollada para la version de Arduino 1.8.5
// y en caso de encontrarse BUGS en futuras versiones de Arduino
// El soporte lo encontrarán en el Canal de Youtube "Innova Domotics"
// https://www.youtube.com/c/innovadomotics en el vídeo dedicado al
// SENSOR DE HUELLA cuyas actualizaciones estarán en enlaces descargables
// en la descripción del vídeo
//--------------------------------------------------------------------
// Esta librería no se ha testeado con versiones anteriores de Arduino
//--------------------------------------------------------------------

#include <InnovaS_Dactilar.h>

#include <SoftwareSerial.h>

// pin #2 - Entrada desde el Sensor  (cable verde)
// pin #3 - Salida de desde Arduino  (cable blanco)

SoftwareSerial MySerial(2, 3);

uint32_t ClaveSensorHuella = 0;
InnovaS_Dactilar MySensorDactilar = InnovaS_Dactilar(&MySerial, ClaveSensorHuella);
int outAuth = 10;
int inFPGA_on = 13;
int outListo = 9;
int inClave_on = 12; 

bool FPGA_on = false;
bool Sensor_on = false;

void setup()
{
  Serial.begin(57600);
  MySensorDactilar.begin(57600);

  pinMode(outAuth, OUTPUT);
  pinMode(outListo, OUTPUT);
  pinMode(inFPGA_on, INPUT);
  pinMode(inClave_on, INPUT);

  digitalWrite(outAuth, LOW);
  digitalWrite(outListo, LOW);
  FPGA_on = (digitalRead(inFPGA_on) == HIGH);
}

void loop()
{
  if (!Sensor_on && FPGA_on) {
    activarSensor();
  } else {
    BuscarID_Huella();
  }
  delay(100);
}

void activarSensor(void)
{
  if (MySensorDactilar.VerificarClave()) {
    Serial.println("Sensor de Huella Encontrado :)  :) ");
    Sensor_on = true;
    digitalWrite(outListo, HIGH);
  } else {
    Serial.println("No fue posible encontrar al sensor de Huella  :(  :( ");
    Sensor_on = false;
    digitalWrite(outListo, LOW);
    while (1);
  }
}

void desautorizar(void)
{
  digitalWrite(outAuth, LOW);
}

void BuscarID_Huella(void)
{
   if(digitalRead(inClave_on) == LOW){
    desautorizar();
    return;
   }
  int p = -1;
  p = MySensorDactilar.CapturarImagen();
  if (p != SDACTILAR_OK) {
    return;
  }

  p = MySensorDactilar.GenerarImg2Tz();
  if (p != SDACTILAR_OK) {
    return;
  }

  p = MySensorDactilar.BusquedaRapida();
  if (p != SDACTILAR_OK)  {
    Serial.println("NO AUTH");
    desautorizar();
    return;
  }

  //Serial.print("Encontrado ID #"); Serial.print(MySensorDactilar.Id_Dactilar);
  //Serial.print(" con seguridad: "); Serial.println(MySensorDactilar.Seguridad);
  Serial.println("AUTH");
  digitalWrite(outAuth, HIGH);
  delay(10000);
  digitalWrite(outAuth, LOW);
}
