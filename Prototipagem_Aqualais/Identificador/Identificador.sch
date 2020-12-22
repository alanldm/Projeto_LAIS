EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:LED LED1
U 1 1 5FDBB453
P 9450 3850
F 0 "LED1" V 9450 3650 50  0000 C CNN
F 1 " " H 9443 3686 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Horizontal_O6.35mm_Z3.0mm" H 9450 3850 50  0001 C CNN
F 3 "~" H 9450 3850 50  0001 C CNN
	1    9450 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R_LED1
U 1 1 5FDBCE81
P 9450 4300
F 0 "R_LED1" H 9200 4250 50  0000 C CNN
F 1 "220Ω" H 9200 4350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 9380 4300 50  0001 C CNN
F 3 "~" H 9450 4300 50  0001 C CNN
	1    9450 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:Buzzer Buzzer1
U 1 1 5FDBDA2D
P 9450 4950
F 0 "Buzzer1" V 9550 4550 50  0000 L CNN
F 1 " " V 9700 4850 50  0000 L CNN
F 2 "Buzzer_Beeper:MagneticBuzzer_ProSignal_ABT-410-RC" V 9425 5050 50  0001 C CNN
F 3 "~" V 9425 5050 50  0001 C CNN
	1    9450 4950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R_Buzzer1
U 1 1 5FDBEE17
P 9350 5300
F 0 "R_Buzzer1" H 9600 5300 50  0000 C CNN
F 1 "100Ω" H 9600 5200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 9280 5300 50  0001 C CNN
F 3 "~" H 9350 5300 50  0001 C CNN
	1    9350 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1_Clock1
U 1 1 5FDC14B4
P 2900 4900
F 0 "C1_Clock1" H 2450 5000 50  0000 L CNN
F 1 "18pF" H 2600 4900 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.5mm_W5.0mm_P5.00mm" H 2938 4750 50  0001 C CNN
F 3 "~" H 2900 4900 50  0001 C CNN
	1    2900 4900
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2_Clock1
U 1 1 5FDC2076
P 2300 4900
F 0 "C2_Clock1" H 2400 5000 50  0000 L CNN
F 1 "18pF" H 2400 4900 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.5mm_W5.0mm_P5.00mm" H 2338 4750 50  0001 C CNN
F 3 "~" H 2300 4900 50  0001 C CNN
	1    2300 4900
	-1   0    0    1   
$EndComp
$Comp
L Device:Crystal Cristal1
U 1 1 5FDC34C8
P 2600 4600
F 0 "Cristal1" H 2600 4450 50  0000 C CNN
F 1 "16MHz" H 2600 4350 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 2600 4600 50  0001 C CNN
F 3 "~" H 2600 4600 50  0001 C CNN
	1    2600 4600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R_Reset1
U 1 1 5FDC3AD2
P 2600 3350
F 0 "R_Reset1" V 2350 3200 50  0000 L CNN
F 1 "10kΩ" V 2450 3250 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2530 3350 50  0001 C CNN
F 3 "~" H 2600 3350 50  0001 C CNN
	1    2600 3350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push B_Reset1
U 1 1 5FDC56BF
P 2600 3800
F 0 "B_Reset1" H 2600 3650 50  0000 C CNN
F 1 " " H 1450 4100 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2600 4000 50  0001 C CNN
F 3 "~" H 2600 4000 50  0001 C CNN
	1    2600 3800
	0    1    1    0   
$EndComp
$Comp
L Connector:Jack-DC Fonte1
U 1 1 5FDC7130
P 8400 3000
F 0 "Fonte1" V 8450 2800 50  0000 R CNN
F 1 "12V" V 8350 2800 50  0000 R CNN
F 2 "Connector_BarrelJack:BarrelJack_CUI_PJ-063AH_Horizontal" H 8450 2960 50  0001 C CNN
F 3 "~" H 8450 2960 50  0001 C CNN
	1    8400 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:Battery_Cell Pilhas1
U 1 1 5FDC9766
P 7700 2300
F 0 "Pilhas1" H 7300 2400 50  0000 L CNN
F 1 "8V" H 7400 2300 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_2468_2xAAA" V 7700 2360 50  0001 C CNN
F 3 "~" V 7700 2360 50  0001 C CNN
	1    7700 2300
	1    0    0    -1  
$EndComp
Text GLabel 4500 3550 2    50   Input ~ 0
CLK2
Text GLabel 4500 3450 2    50   Input ~ 0
CLK1
Wire Wire Line
	2900 4600 2750 4600
Wire Wire Line
	2450 4600 2300 4600
Wire Wire Line
	2300 4600 2300 4750
Wire Wire Line
	2900 5050 2900 5150
Wire Wire Line
	2300 5150 2300 5050
Text GLabel 2300 4600 1    50   Input ~ 0
CLK2
Text GLabel 2900 4600 1    50   Input ~ 0
CLK1
Text GLabel 4500 4350 2    50   Input ~ 0
Reset
Wire Wire Line
	2600 3500 2600 3600
Text GLabel 2600 3550 2    50   Input ~ 0
Reset
Text GLabel 2600 4000 3    50   Input ~ 0
GND
Text GLabel 2600 3200 1    50   Input ~ 0
VCC
Wire Wire Line
	2900 5150 2300 5150
Text GLabel 3900 5550 2    50   Input ~ 0
GND
Text GLabel 3900 2550 1    50   Input ~ 0
VCC
Text GLabel 3300 2850 0    50   Input ~ 0
VCC
Text GLabel 4000 2550 1    50   Input ~ 0
VCC
Text GLabel 2600 5150 3    50   Input ~ 0
GND
$Comp
L Relay:FINDER-40.41 Relay1
U 1 1 5FE0FDDD
P 8400 1900
F 0 "Relay1" V 7950 2000 50  0000 R CNN
F 1 "10A" V 7850 2000 50  0000 R CNN
F 2 "Relay_THT:Relay_1-Form-C_Schrack-RYII_RM3.2mm" H 9540 1860 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 8400 1900 50  0001 C CNN
	1    8400 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 2100 8100 2700
Wire Wire Line
	8100 2700 8300 2700
Wire Wire Line
	8700 2100 8700 2700
Wire Wire Line
	8700 2700 8500 2700
Text GLabel 9350 2600 3    50   Input ~ 0
VCC
Connection ~ 8100 2700
Wire Wire Line
	7700 1800 8100 1800
Wire Wire Line
	7700 1800 7700 2100
Wire Wire Line
	7700 2400 7700 2700
Text GLabel 9050 2300 0    50   Input ~ 0
GND
Text GLabel 7700 2700 3    50   Input ~ 0
GND
Wire Notes Line
	7250 1350 9850 1350
Wire Notes Line
	9850 1350 9850 3250
Wire Notes Line
	9850 3250 7250 3250
Wire Notes Line
	7250 3250 7250 1350
Text Notes 8050 1300 0    50   ~ 0
Sistema de Alimentação
$Comp
L Display_Character:WC1602A Display1
U 1 1 5FE45766
P 8550 4550
F 0 "Display1" H 8800 5350 50  0000 C CNN
F 1 " " H 9050 4250 50  0000 C CNN
F 2 "Display:WC1602A" H 8550 3650 50  0001 C CIN
F 3 "http://www.wincomlcd.com/pdf/WC1602A-SFYLYHTC06.pdf" H 9250 4550 50  0001 C CNN
	1    8550 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 4150 9450 4000
Text GLabel 9450 4450 3    50   Input ~ 0
GND
Text GLabel 9450 3700 1    50   Input ~ 0
P6
Text GLabel 4500 5150 2    50   Input ~ 0
P6
Wire Wire Line
	9350 5050 9350 5150
Text GLabel 9550 5050 3    50   Input ~ 0
GND
Text GLabel 9350 5450 3    50   Input ~ 0
P7
Text GLabel 4500 5250 2    50   Input ~ 0
P7
Text Notes 8150 5900 0    50   ~ 0
Sistema Audiovisual\n
$Comp
L Switch:SW_Push On/Off1
U 1 1 5FDCB0F2
P 9050 1700
F 0 "On/Off1" H 9050 1900 50  0000 C CNN
F 1 " " H 7900 2000 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P7.62mm_Drill2mm" H 9050 1900 50  0001 C CNN
F 3 "~" H 9050 1900 50  0001 C CNN
	1    9050 1700
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 Regulador1
U 1 1 5FE2B01A
P 9350 2300
F 0 "Regulador1" V 9100 2550 50  0000 C CNN
F 1 "5V" V 9200 2550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9375 2150 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 9350 2250 50  0001 C CNN
	1    9350 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 1700 8850 1700
Wire Wire Line
	9250 1700 9350 1700
Wire Wire Line
	9350 1700 9350 2000
Wire Wire Line
	8700 2100 8850 2100
Wire Wire Line
	8850 2100 8850 1700
Connection ~ 8700 2100
Connection ~ 8850 1700
NoConn ~ 8100 1600
Text GLabel 4500 3350 2    50   Input ~ 0
SCK
Text GLabel 4500 3250 2    50   Input ~ 0
MISO
Text GLabel 4500 3150 2    50   Input ~ 0
MOSI
Text GLabel 4500 3050 2    50   Input ~ 0
CS
Wire Notes Line
	2950 2200 2950 1550
Wire Notes Line
	2950 1550 3650 1550
Wire Notes Line
	3650 1550 3650 2200
Wire Notes Line
	3650 2200 2950 2200
Text Notes 2800 1500 0    50   ~ 0
Sistema de Armazenamento\n
$Comp
L Connector:Conn_01x16_Female M_I2C1
U 1 1 5FDE170E
P 7650 4400
F 0 "M_I2C1" H 7400 5250 50  0000 L CNN
F 1 " " H 7678 4285 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 7650 4400 50  0001 C CNN
F 3 "~" H 7650 4400 50  0001 C CNN
	1    7650 4400
	1    0    0    -1  
$EndComp
Text GLabel 7450 3700 0    50   Input ~ 0
Vss
Text GLabel 7450 3800 0    50   Input ~ 0
Vdd
Text GLabel 7450 3900 0    50   Input ~ 0
Ve
Text GLabel 7450 4000 0    50   Input ~ 0
Rs
Text GLabel 7450 4100 0    50   Input ~ 0
Rw
Text GLabel 7450 4200 0    50   Input ~ 0
E
Text GLabel 7450 4300 0    50   Input ~ 0
D0
Text GLabel 7450 4400 0    50   Input ~ 0
D1
Text GLabel 7450 4500 0    50   Input ~ 0
D2
Text GLabel 7450 4600 0    50   Input ~ 0
D3
Text GLabel 7450 4700 0    50   Input ~ 0
D4
Text GLabel 7450 4800 0    50   Input ~ 0
D5
Text GLabel 7450 4900 0    50   Input ~ 0
D6
Text GLabel 7450 5000 0    50   Input ~ 0
D7
Text GLabel 7450 5100 0    50   Input ~ 0
BC
Text GLabel 7450 5200 0    50   Input ~ 0
BA
$Comp
L Connector:Conn_01x04_Female I2C_Conn1
U 1 1 5FDE82AF
P 7650 5450
F 0 "I2C_Conn1" H 7700 5400 50  0000 L CNN
F 1 " " H 7678 5335 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7650 5450 50  0001 C CNN
F 3 "~" H 7650 5450 50  0001 C CNN
	1    7650 5450
	1    0    0    -1  
$EndComp
Text GLabel 7450 5350 0    50   Input ~ 0
GND
Text GLabel 7450 5450 0    50   Input ~ 0
VCC
Text GLabel 7450 5550 0    50   Input ~ 0
SDA
Text GLabel 7450 5650 0    50   Input ~ 0
SCL
Text GLabel 4500 4150 2    50   Input ~ 0
SDA
Text GLabel 4500 4250 2    50   Input ~ 0
SCL
Wire Notes Line
	7200 3450 9900 3450
Wire Notes Line
	9900 3450 9900 5750
Wire Notes Line
	9900 5750 7200 5750
Wire Notes Line
	7200 5750 7200 3450
Text GLabel 8550 5350 3    50   Input ~ 0
Vss
Text GLabel 8550 3750 1    50   Input ~ 0
Vdd
Text GLabel 8950 3950 2    50   Input ~ 0
Ve
Text GLabel 8150 4150 0    50   Input ~ 0
Rs
Text GLabel 8150 4050 0    50   Input ~ 0
Rw
Text GLabel 8150 3950 0    50   Input ~ 0
E
Text GLabel 8150 4450 0    50   Input ~ 0
D0
Text GLabel 8150 4550 0    50   Input ~ 0
D1
Text GLabel 8150 4650 0    50   Input ~ 0
D2
Text GLabel 8150 4750 0    50   Input ~ 0
D3
Text GLabel 8150 4850 0    50   Input ~ 0
D4
Text GLabel 8150 4950 0    50   Input ~ 0
D5
Text GLabel 8150 5050 0    50   Input ~ 0
D6
Text GLabel 8150 5150 0    50   Input ~ 0
D7
Text GLabel 8950 4250 2    50   Input ~ 0
BC
Text GLabel 8950 4350 2    50   Input ~ 0
BA
Text GLabel 6750 4450 2    50   Input ~ 0
GND
NoConn ~ 5350 4150
NoConn ~ 6750 4150
NoConn ~ 5350 3850
NoConn ~ 5350 3750
Text GLabel 5350 4350 0    50   Input ~ 0
SDA
Text GLabel 5350 4450 0    50   Input ~ 0
SCL
Text GLabel 4500 4550 2    50   Input ~ 0
RX
Text GLabel 4500 4650 2    50   Input ~ 0
TX
$Comp
L Connector:Conn_01x06_Female FTDI1
U 1 1 5FDD8293
P 5200 5000
F 0 "FTDI1" H 5100 4550 50  0000 C CNN
F 1 " " H 5092 4566 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Horizontal" H 5200 5000 50  0001 C CNN
F 3 "~" H 5200 5000 50  0001 C CNN
	1    5200 5000
	-1   0    0    -1  
$EndComp
Text GLabel 5400 4800 2    50   Input ~ 0
GND
Text GLabel 5400 5000 2    50   Input ~ 0
VCC
Text GLabel 5400 4900 2    50   Input ~ 0
CTS
Text GLabel 5400 5100 2    50   Input ~ 0
RX
Text GLabel 5400 5200 2    50   Input ~ 0
TX
Wire Wire Line
	5500 5300 5400 5300
$Comp
L Device:C C_DTR1
U 1 1 5FDDB010
P 5650 5300
F 0 "C_DTR1" V 5500 5300 50  0000 C CNN
F 1 "1uF" V 5400 5300 50  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D5.0mm_H7.0mm_P2.00mm" H 5688 5150 50  0001 C CNN
F 3 "~" H 5650 5300 50  0001 C CNN
	1    5650 5300
	0    -1   -1   0   
$EndComp
Text GLabel 5800 5300 2    50   Input ~ 0
Reset
Wire Notes Line
	5100 3500 7000 3500
Wire Notes Line
	7000 5750 5100 5750
Text Notes 5550 5900 0    50   ~ 0
Sistema de Comunicação
Text Notes 5550 1900 0    50   ~ 0
Sistema de Sensoriamento\n
$Comp
L Connector:Conn_01x03_Male TDS1
U 1 1 5FDE78E5
P 6500 2600
F 0 "TDS1" H 6700 2850 50  0000 C CNN
F 1 " " H 6608 2790 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6500 2600 50  0001 C CNN
F 3 "~" H 6500 2600 50  0001 C CNN
	1    6500 2600
	1    0    0    -1  
$EndComp
Text GLabel 6700 2500 2    50   Input ~ 0
GND
Text GLabel 6700 2600 2    50   Input ~ 0
VCC
Text GLabel 4500 3750 2    50   Input ~ 0
A0
Text GLabel 6700 2700 2    50   Input ~ 0
A0
$Comp
L Sensor_Current:ACS712xLCTR-30A ACS712
U 1 1 5FDE98E0
P 5850 2600
F 0 "ACS712" H 5350 2600 50  0000 C CNN
F 1 " " H 5850 3090 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5950 2250 50  0001 L CIN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS712-Datasheet.ashx?la=en" H 5850 2600 50  0001 C CNN
	1    5850 2600
	1    0    0    -1  
$EndComp
Text GLabel 5850 3000 3    50   Input ~ 0
GND
Text GLabel 5850 2200 1    50   Input ~ 0
VCC
Text GLabel 6250 2600 2    50   Input ~ 0
A1
Text GLabel 4500 3850 2    50   Input ~ 0
A1
Wire Notes Line
	6950 1950 6950 3250
Wire Notes Line
	6950 3250 5150 3250
Wire Notes Line
	5150 3250 5150 1950
Wire Notes Line
	5150 1950 6950 1950
$Comp
L ESP8266-01_ESP-01:ESP8266-01_ESP-01 ESP8266-1
U 1 1 5FDD20F1
P 6050 4150
F 0 "ESP8266-1" H 6050 4750 50  0000 C CNN
F 1 " " H 6050 4726 50  0000 C CNN
F 2 "ESP8266:ESP-01" H 6050 4150 50  0001 L BNN
F 3 "" H 6050 4150 50  0001 L BNN
F 4 "AI-Thinkers vendor" H 6050 4150 50  0001 L BNN "MANUFACTURER"
	1    6050 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R_Divisor1
U 1 1 5FE01CE2
P 6400 4950
F 0 "R_Divisor1" H 6470 4996 50  0000 L CNN
F 1 "1kΩ" H 6470 4905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6330 4950 50  0001 C CNN
F 3 "~" H 6400 4950 50  0001 C CNN
	1    6400 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R_Divisor2
U 1 1 5FE0303C
P 6400 5350
F 0 "R_Divisor2" H 6470 5396 50  0000 L CNN
F 1 "2kΩ" H 6470 5305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6330 5350 50  0001 C CNN
F 3 "~" H 6400 5350 50  0001 C CNN
	1    6400 5350
	1    0    0    -1  
$EndComp
Text GLabel 6400 5500 3    50   Input ~ 0
GND
Text GLabel 6400 4800 1    50   Input ~ 0
VCC
Wire Wire Line
	6400 5100 6400 5200
Text GLabel 6400 5150 2    50   Input ~ 0
3V3
Text GLabel 6750 3750 2    50   Input ~ 0
3V3
Wire Notes Line
	7000 3500 7000 5750
Wire Notes Line
	5100 3500 5100 5750
Wire Notes Line
	1800 2300 4850 2300
Wire Notes Line
	1800 5750 4850 5750
Wire Notes Line
	4850 2300 4850 5750
Wire Notes Line
	1800 2300 1800 5750
NoConn ~ 4500 5050
NoConn ~ 4500 4950
NoConn ~ 4500 4850
NoConn ~ 4500 4750
NoConn ~ 4500 4050
NoConn ~ 4500 2950
NoConn ~ 4500 2850
Text Notes 2800 5900 0    50   ~ 0
Sistema de Processamento\n
Wire Wire Line
	7700 2700 8100 2700
Text Notes 8150 7650 0    50   ~ 0
19/12/2020
Text Notes 7350 7500 0    50   ~ 0
Aqualais 1.0V\n
Text GLabel 3350 1950 3    50   Input ~ 0
MISO
Text GLabel 3250 1950 3    50   Input ~ 0
MOSI
Text GLabel 3150 1950 3    50   Input ~ 0
SCK
Text GLabel 3050 1950 3    50   Input ~ 0
CS
Text GLabel 3450 1950 3    50   Input ~ 0
VCC
Text GLabel 3550 1950 3    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x06_Male M_SD_Card1
U 1 1 5FDF6063
P 3350 1750
F 0 "M_SD_Card1" V 3250 1450 50  0000 L CNN
F 1 " " V 3503 1994 50  0000 L CNN
F 2 "" H 3350 1750 50  0001 C CNN
F 3 "~" H 3350 1750 50  0001 C CNN
	1    3350 1750
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x03_Male M_Tensao1
U 1 1 5FE1218A
P 6500 3050
F 0 "M_Tensao1" H 6250 3100 50  0000 C CNN
F 1 "0-25V" H 6250 3000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6500 3050 50  0001 C CNN
F 3 "~" H 6500 3050 50  0001 C CNN
	1    6500 3050
	1    0    0    -1  
$EndComp
Text GLabel 6700 2950 2    50   Input ~ 0
GND
Text GLabel 6700 3050 2    50   Input ~ 0
VCC
Text GLabel 6700 3150 2    50   Input ~ 0
A2
Wire Wire Line
	2900 4750 2900 4600
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU ATmega328P-PU1
U 1 1 5FDB5CB1
P 3900 4050
F 0 "ATmega328P-PU1" H 4250 2400 50  0000 R CNN
F 1 " " H 3350 4000 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 3900 4050 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 3900 4050 50  0001 C CNN
	1    3900 4050
	1    0    0    -1  
$EndComp
Text GLabel 4500 3950 2    50   Input ~ 0
A2
$EndSCHEMATC
