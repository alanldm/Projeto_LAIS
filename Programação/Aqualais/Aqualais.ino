//--------------------Bibliotecas-------------------
#include <Wire.h> //Biblioteca para o funcionamento do protocolo de comunicação I2C
#include <LiquidCrystal_I2C.h> //Biblioteca para o funcionamento do LCD via protocolo I2C
#include <GravityTDS.h> //Biblioteca para o funcionamento do sensor TDS Meter 1.0V
#include <ACS712.h> //Biblioteca para o funcionamento do medidor de corrente ACS712
#include <SPI.h> //Biblioteca para o funcionamento do protocolo de comunicação SPI
#include <SD.h> //Biblioteca para o funcionamento do módulo micro SD Card
#include <EEPROM.h> //Biblioteca para acessar a EEPROM do ATmega328p-pu

//-------- Inicialização do Módulo I2C/LCD ----------
#define End_I2C 0x3F //Endereço hipotético do módulo I2C
#define colunas 16 //Número de colunas do display LCD
#define linhas 2 //Número de linhas do display LCD

LiquidCrystal_I2C lcd(End_I2C, colunas, linhas); //Instanciando o objeto lcd
//---------------------------------------------------

//-------------- Declaração do TDS -----------------
#define Tsd A0 //TDS Meter 1.0V conecetado à entrada analógica A0 do ATmega328p-pu
GravityTDS gravityTds; //Instanciando o objeto gravityTds
float temperatura = 30; //Definindo um valor fixo de temperatura. Poderia ser adicionado um sensor para medir em tempo real
float V_Tsd = 0; //Valor padrão para a medição do TDS Meter 1.0V quando fora d'água
//---------------------------------------------------

//----------- Declaração do LED e do Buzzer ---------
#define led 6 //Led conectado à entrada digital 6 do ATmega328p-pu
#define buzzer 7 //Buzzer conectado à entrada digital 7 do ATmega328p-pu
//---------------------------------------------------

//------ Declaração Módulo Medidor de Tensão --------
#define M_Tensao A2
float Voltage = 0;
float Tensao = 0;
float unidade = 0.004887586; //5/1023
float R1 = 30000.0;
float R2 = 7200.0;
//--------------------------------------------------

//--------- Função Para Medir a Tensão -------------
float MedirTensao(){
  Voltage = analogRead(M_Tensao);
  Voltage = (Voltage*unidade);
  Tensao = Voltage*(R2/(R1+R2));
      
  return Tensao;
}
//--------------------------------------------------

//------------- Declaração do ACS712 ---------------
ACS712 C_Medidor(A1, 5.0, 1023, 66); //Instanciando o objeto C_Medidor
int corrente = 0;
//--------------------------------------------------

File Arquivo_CSV; //Instanciando o objeto Arquivo_CSV

void setup() {
  pinMode(buzzer, OUTPUT); //O estado do pino do Buzzer é de saída
  pinMode(led, OUTPUT); //O estado do pino do LED é de saída

  gravityTds.setPin(Tsd); //O objeto gravityTds recebe os valores de Tsd (A0)
  gravityTds.setAref(5.0); //Tensão de referência 5V
  gravityTds.setAdcRange(1024); //Conversão para 10 bits
  gravityTds.begin(); //Inicialização do gravityTds

  C_Medidor.autoMidPoint(); //Inicialização do ACS712

  lcd.begin (16,2); //Inicialização do display LCD 16x2
  lcd.setBacklight(HIGH); //Ligando as luzes de fundo do display LCD

  //Atribuindo pela primeira vez um valor a primeira posição da EEPROM
  if (EEPROM.read(0) == NULL){
    int arq_valor = 1;
    EEPROM.write(0,arq_valor);
  }

  //Indicativo de erro caso não reconheça o SD Card
  if (!SD.begin(4)){
    int i = 0;
    while (i<25){
      tone(buzzer, 500);
      digitalWrite(6, HIGH);
      delay(200);
      digitalWrite(6,LOW);
      i++;
    }
      noTone(buzzer);
  }

  Arquivo_CSV = SD.open("Voltametria"+String(EEPROM.read(0))+".csv", FILE_WRITE); //Criando/abrindo um documento CSV no SD Card

  EEPROM.write(0,EEPROM.read(0)+1); //Somando mais um à variável da posição 0 da EEPROM (arq_valor)

  //Layout do display LCD ao ligar
  lcd.setCursor(3,0);
  lcd.print("Bem  Vindo");
  lcd.setCursor(2,1);
  lcd.print("Aqualais 1.0");
  delay(500);
  lcd.clear();
  delay(500);
  //Estabelecendo o layout do display LCD
  lcd.setCursor(0,0);
  lcd.print("TSD: ");
  lcd.setCursor(5,0);
  lcd.print(V_Tsd);
  lcd.setCursor(0,1);
  lcd.print("I: "+corrente);
  lcd.setCursor(11,0);
  lcd.print("Ha:");
}

void loop() {
  gravityTds.setTemperature(temperatura); //Setando o valor de temperatura para o TDS
  gravityTds.update(); //Atualizando dados do TDS Meter
  V_Tsd = gravityTds.getTdsValue(); //Recebendo o valor de sólidos dissolvidos
  
  corrente = C_Medidor.mA_DC(); //Recebendo a corrente medida
  
  //Armazenamento do dados de corrente e tensão no SD Card
  if (Arquivo_CSV){
    Arquivo_CSV.println(corrente);
    Arquivo_CSV.println(MedirTensao());
    Arquivo_CSV.close();
  }
  
  //Indicadores audiovisuais da presença de sal e açúcar
  if (V_Tsd <= 60 && V_Tsd != 0 && corrente<=5){
    lcd.setCursor(10,0);
    lcd.print("Açucar");
    tone(buzzer, 250);
    digitalWrite(led, HIGH);
    delay(500);
    noTone(buzzer);
    digitalWrite(led, LOW);      
  } else {
    lcd.setCursor(10,0);
    lcd.print("Sal");
    for (int y = 0; y < 2; y++){
      tone(buzzer, 250);
      digitalWrite(led, HIGH);
      delay(100);
      noTone(buzzer);
      digitalWrite(led, LOW);
    }  
  }
}
