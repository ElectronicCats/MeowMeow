EESchema Schematic File Version 4
LIBS:Meow Meow-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Meow Meow"
Date "2019-11-14"
Rev "1.3"
Comp "Electronic Cats"
Comment1 "Andres Sabas"
Comment2 "[OSHW] MX000003 | Certified open source hardware | oshwa.org/cert."
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Meow-Meow-rescue:AP2112-MeowMeow U2
U 1 1 5AD95D02
P 8765 1490
F 0 "U2" H 8565 1790 60  0000 C CNN
F 1 "AP2114-3.3K" H 8915 1240 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 8765 1490 60  0001 C CNN
F 3 "" H 8765 1490 60  0000 C CNN
F 4 "AP2114H-3.3TRG1" H 8765 1490 60  0001 C CNN "Part#"
	1    8765 1490
	1    0    0    -1  
$EndComp
Text Label 2325 4455 0    60   ~ 0
D+
Text Label 2325 4355 0    60   ~ 0
D-
Text Label 2335 2155 0    60   ~ 0
Y0
Text Label 2330 2355 0    60   ~ 0
Y2
Text Label 4070 2855 0    60   ~ 0
Y15
Text Label 4070 2755 0    60   ~ 0
Y14
NoConn ~ 7635 3460
$Comp
L Meow-Meow-rescue:GND-MeowMeow #PWR01
U 1 1 5AD96563
P 7530 3600
F 0 "#PWR01" H 7530 3350 50  0001 C CNN
F 1 "GND" H 7530 3450 50  0000 C CNN
F 2 "" H 7530 3600 50  0000 C CNN
F 3 "" H 7530 3600 50  0000 C CNN
	1    7530 3600
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:VCC-MeowMeow #PWR02
U 1 1 5AD96587
P 7180 3135
F 0 "#PWR02" H 7180 2985 50  0001 C CNN
F 1 "VCC" H 7180 3285 50  0000 C CNN
F 2 "" H 7180 3135 50  0000 C CNN
F 3 "" H 7180 3135 50  0000 C CNN
	1    7180 3135
	1    0    0    -1  
$EndComp
Text Label 7525 3260 0    60   ~ 0
D-
Text Label 7525 3360 0    60   ~ 0
D+
Text Notes 2645 765  0    60   ~ 0
MICROCONTROLLER SAMD21
Text Notes 8765 650  0    60   ~ 0
POWER AND FILTERING
Text Notes 8290 2550 0    60   ~ 0
USB, SWD PROGRAMMING AND LEDS
Text Notes 7925 4725 0    60   ~ 0
SENSOR CAPACITIVE
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow P7
U 1 1 5AD981B5
P 10435 4985
F 0 "P7" H 10435 5085 60  0000 C CNN
F 1 "S" H 10435 4885 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 10435 4985 60  0001 C CNN
F 3 "" H 10435 4985 60  0001 C CNN
	1    10435 4985
	0    -1   -1   0   
$EndComp
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow P6
U 1 1 5AD9829A
P 10130 4985
F 0 "P6" H 10130 5085 60  0000 C CNN
F 1 "D" H 10130 4885 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 10130 4985 60  0001 C CNN
F 3 "" H 10130 4985 60  0001 C CNN
	1    10130 4985
	0    -1   -1   0   
$EndComp
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow P3
U 1 1 5AD98302
P 9485 4995
F 0 "P3" H 9485 5095 60  0000 C CNN
F 1 "KEY_RIGHT_ARROW" H 9485 4895 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 9485 4995 60  0001 C CNN
F 3 "" H 9485 4995 60  0001 C CNN
	1    9485 4995
	0    -1   -1   0   
$EndComp
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow P2
U 1 1 5AD9836F
P 9155 5005
F 0 "P2" H 9155 5105 60  0000 C CNN
F 1 "KEY_DOWN_ARROW" H 9155 4905 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 9155 5005 60  0001 C CNN
F 3 "" H 9155 5005 60  0001 C CNN
	1    9155 5005
	0    -1   -1   0   
$EndComp
Text Label 10435 5365 3    60   ~ 0
Y0
Text Label 10130 5365 3    60   ~ 0
Y1
Text Label 9485 5360 3    60   ~ 0
Y3
Text Label 9155 5370 3    60   ~ 0
Y4
$Comp
L Meow-Meow-rescue:C_Small-MeowMeow C4
U 1 1 5AD98E8E
P 8030 1440
F 0 "C4" H 8040 1510 50  0000 L CNN
F 1 "10uF" H 8040 1360 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8030 1440 50  0001 C CNN
F 3 "" H 8030 1440 50  0000 C CNN
F 4 "TMCUA0J106MTR2F" H 8030 1440 60  0001 C CNN "Part#"
	1    8030 1440
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:C_Small-MeowMeow C5
U 1 1 5AD98EFB
P 9370 1455
F 0 "C5" H 9380 1525 50  0000 L CNN
F 1 "0.1uF" H 9115 1385 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9370 1455 50  0001 C CNN
F 3 "" H 9370 1455 50  0000 C CNN
F 4 "885012207072" H 9370 1455 60  0001 C CNN "Part#"
	1    9370 1455
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:C_Small-MeowMeow C6
U 1 1 5AD98F7F
P 9605 1455
F 0 "C6" H 9615 1525 50  0000 L CNN
F 1 "10uF" H 9615 1375 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9605 1455 50  0001 C CNN
F 3 "" H 9605 1455 50  0000 C CNN
F 4 "TMCUA0J106MTR2F" H 9605 1455 60  0001 C CNN "Part#"
	1    9605 1455
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:LED-MeowMeow D1
U 1 1 5AD9907D
P 10560 3100
F 0 "D1" H 10560 3200 50  0000 C CNN
F 1 "POWER" H 10560 3000 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 10560 3100 50  0001 C CNN
F 3 "" H 10560 3100 50  0000 C CNN
F 4 "APT2012SGC" H 10560 3100 60  0001 C CNN "Part#"
	1    10560 3100
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:R_Small-MeowMeow R2
U 1 1 5AD9913C
P 10230 3100
F 0 "R2" H 10260 3120 50  0000 L CNN
F 1 "1K" H 10260 3060 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 10230 3100 50  0001 C CNN
F 3 "" H 10230 3100 50  0000 C CNN
F 4 "AC0805FR-071KL" H 10230 3100 60  0001 C CNN "Part#"
	1    10230 3100
	0    1    1    0   
$EndComp
$Comp
L Meow-Meow-rescue:GND-MeowMeow #PWR03
U 1 1 5AD99661
P 10055 3100
F 0 "#PWR03" H 10055 2850 50  0001 C CNN
F 1 "GND" H 10055 2950 50  0000 C CNN
F 2 "" H 10055 3100 50  0000 C CNN
F 3 "" H 10055 3100 50  0000 C CNN
	1    10055 3100
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:+3.3V-MeowMeow #PWR04
U 1 1 5AD9971F
P 10790 3100
F 0 "#PWR04" H 10790 2950 50  0001 C CNN
F 1 "+3.3V" H 10790 3240 50  0000 C CNN
F 2 "" H 10790 3100 50  0000 C CNN
F 3 "" H 10790 3100 50  0000 C CNN
	1    10790 3100
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:LED-MeowMeow D2
U 1 1 5AD99995
P 10560 3515
F 0 "D2" H 10560 3615 50  0000 C CNN
F 1 "LED" H 10560 3415 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 10560 3515 50  0001 C CNN
F 3 "" H 10560 3515 50  0000 C CNN
F 4 "APT2012SGC" H 10560 3515 60  0001 C CNN "Part#"
	1    10560 3515
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:R_Small-MeowMeow R3
U 1 1 5AD9999C
P 10230 3515
F 0 "R3" H 10260 3535 50  0000 L CNN
F 1 "1K" H 10260 3475 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 10230 3515 50  0001 C CNN
F 3 "" H 10230 3515 50  0000 C CNN
F 4 "AC0805FR-071KL" H 10230 3515 60  0001 C CNN "Part#"
	1    10230 3515
	0    1    1    0   
$EndComp
$Comp
L Meow-Meow-rescue:GND-MeowMeow #PWR05
U 1 1 5AD999A6
P 10055 3515
F 0 "#PWR05" H 10055 3265 50  0001 C CNN
F 1 "GND" H 10055 3365 50  0000 C CNN
F 2 "" H 10055 3515 50  0000 C CNN
F 3 "" H 10055 3515 50  0000 C CNN
	1    10055 3515
	1    0    0    -1  
$EndComp
Text Label 10790 3515 0    60   ~ 0
D8
Text Label 8755 3395 2    60   ~ 0
SWDIO
Text Label 9470 3495 0    60   ~ 0
SWCLK
$Comp
L Meow-Meow-rescue:+3.3V-MeowMeow #PWR06
U 1 1 5AD9BCA9
P 8354 3477
F 0 "#PWR06" H 8354 3327 50  0001 C CNN
F 1 "+3.3V" H 8354 3617 50  0000 C CNN
F 2 "" H 8354 3477 50  0000 C CNN
F 3 "" H 8354 3477 50  0000 C CNN
	1    8354 3477
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:GND-MeowMeow #PWR07
U 1 1 5AD9BD50
P 9831 3431
F 0 "#PWR07" H 9831 3181 50  0001 C CNN
F 1 "GND" H 9836 3281 50  0000 C CNN
F 2 "" H 9831 3431 50  0000 C CNN
F 3 "" H 9831 3431 50  0000 C CNN
	1    9831 3431
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow P5
U 1 1 5AD9D9AC
P 9795 4995
F 0 "P5" H 9795 5095 60  0000 C CNN
F 1 "KEY_LEFT_ARROW" H 9795 4895 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 9795 4995 60  0001 C CNN
F 3 "" H 9795 4995 60  0001 C CNN
	1    9795 4995
	0    -1   -1   0   
$EndComp
Text Label 9795 5360 3    60   ~ 0
Y2
$Comp
L Meow-Meow-rescue:GND-MeowMeow #PWR08
U 1 1 5ADA067C
P 8030 1600
F 0 "#PWR08" H 8030 1350 50  0001 C CNN
F 1 "GND" H 8030 1450 50  0000 C CNN
F 2 "" H 8030 1600 50  0000 C CNN
F 3 "" H 8030 1600 50  0000 C CNN
	1    8030 1600
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:GND-MeowMeow #PWR09
U 1 1 5ADA0DDC
P 8250 1720
F 0 "#PWR09" H 8250 1470 50  0001 C CNN
F 1 "GND" H 8250 1570 50  0000 C CNN
F 2 "" H 8250 1720 50  0000 C CNN
F 3 "" H 8250 1720 50  0000 C CNN
	1    8250 1720
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:VCC-MeowMeow #PWR010
U 1 1 5ADA0F24
P 7590 1175
F 0 "#PWR010" H 7590 1025 50  0001 C CNN
F 1 "VCC" H 7590 1325 50  0000 C CNN
F 2 "" H 7590 1175 50  0000 C CNN
F 3 "" H 7590 1175 50  0000 C CNN
	1    7590 1175
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:+3.3V-MeowMeow #PWR011
U 1 1 5ADA11F4
P 9945 1225
F 0 "#PWR011" H 9945 1075 50  0001 C CNN
F 1 "+3.3V" H 9945 1365 50  0000 C CNN
F 2 "" H 9945 1225 50  0000 C CNN
F 3 "" H 9945 1225 50  0000 C CNN
	1    9945 1225
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:GND-MeowMeow #PWR012
U 1 1 5ADA139A
P 9605 1630
F 0 "#PWR012" H 9605 1380 50  0001 C CNN
F 1 "GND" H 9605 1480 50  0000 C CNN
F 2 "" H 9605 1630 50  0000 C CNN
F 3 "" H 9605 1630 50  0000 C CNN
	1    9605 1630
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:GND-MeowMeow #PWR013
U 1 1 5ADA141E
P 9370 1630
F 0 "#PWR013" H 9370 1380 50  0001 C CNN
F 1 "GND" H 9370 1480 50  0000 C CNN
F 2 "" H 9370 1630 50  0000 C CNN
F 3 "" H 9370 1630 50  0000 C CNN
	1    9370 1630
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:GND-MeowMeow #PWR014
U 1 1 5AE3E770
P 8035 3760
F 0 "#PWR014" H 8035 3510 50  0001 C CNN
F 1 "GND" H 8035 3610 50  0000 C CNN
F 2 "" H 8035 3760 50  0000 C CNN
F 3 "" H 8035 3760 50  0000 C CNN
	1    8035 3760
	1    0    0    -1  
$EndComp
Text Label 2335 2455 0    60   ~ 0
Y3
Text Label 2295 4755 2    60   ~ 0
SWCLK
Text Label 2295 4855 2    60   ~ 0
SWDIO
Text Label 2340 1955 2    60   ~ 0
SDA
Text Label 2340 2055 2    60   ~ 0
SCL
$Comp
L Meow-Meow-rescue:ATSAMD21G18A-AU-MeowMeow U1
U 1 1 5AFC6E86
P 3195 3255
F 0 "U1" H 2595 4976 50  0000 L BNN
F 1 "ATSAMD21G18A-AU" H 2594 1451 50  0000 L BNN
F 2 "Housings_QFP:TQFP-48_7x7mm_Pitch0.5mm" H 3195 3255 50  0001 L BNN
F 3 "3.01 USD" H 3195 3255 50  0001 L BNN
F 4 "Microchip" H 3195 3255 50  0001 L BNN "Campo4"
F 5 "TQFP-48 Microchip" H 3195 3255 50  0001 L BNN "Campo5"
F 6 "SAMD21G Series 256 kB Flash 32 kB SRAM 48 MHz 32-Bit Microcontroller - TQFP-48" H 3195 3255 50  0001 L BNN "Campo6"
F 7 "ATSAMD21G18A-AU" H 3195 3255 50  0001 L BNN "Part#"
	1    3195 3255
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:USB_OTG-MeowMeow P9
U 1 1 5AFC70FD
P 7935 3360
F 0 "P9" H 8260 3235 50  0000 C CNN
F 1 "USB_Micro" H 7935 3560 50  0000 C CNN
F 2 "Connectors:U254051N4BH806" V 7885 3260 50  0001 C CNN
F 3 "" V 7885 3260 50  0000 C CNN
F 4 "U254-051N-4BH806" H 7935 3360 60  0001 C CNN "Part#"
	1    7935 3360
	0    1    1    0   
$EndComp
Text Label 2325 2255 0    60   ~ 0
Y1
Text Label 2335 2555 0    60   ~ 0
Y4
Text Label 2335 2655 0    60   ~ 0
Y5
Text Label 4070 2555 0    60   ~ 0
Y8
Text Label 4070 2655 0    60   ~ 0
Y9
$Comp
L Meow-Meow-rescue:C_Small-MeowMeow C1
U 1 1 5AFCC5C3
P 3945 2185
F 0 "C1" H 3955 2255 50  0000 L CNN
F 1 "1uF" H 3955 2105 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3945 2185 50  0001 C CNN
F 3 "" H 3945 2185 50  0000 C CNN
F 4 "C2012X7R1C105K125AA" H 3945 2185 60  0001 C CNN "Part#"
	1    3945 2185
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:GND-MeowMeow #PWR015
U 1 1 5AFCC90C
P 3945 2340
F 0 "#PWR015" H 3945 2090 50  0001 C CNN
F 1 "GND" H 3945 2190 50  0000 C CNN
F 2 "" H 3945 2340 50  0000 C CNN
F 3 "" H 3945 2340 50  0000 C CNN
	1    3945 2340
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:+3.3V-MeowMeow #PWR016
U 1 1 5AFCCDC2
P 3990 1565
F 0 "#PWR016" H 3990 1415 50  0001 C CNN
F 1 "+3.3V" H 3990 1705 50  0000 C CNN
F 2 "" H 3990 1565 50  0000 C CNN
F 3 "" H 3990 1565 50  0000 C CNN
	1    3990 1565
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:C_Small-MeowMeow C2
U 1 1 5AFCCE9C
P 4210 1755
F 0 "C2" H 4220 1825 50  0000 L CNN
F 1 "0.1uF" H 4220 1675 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4210 1755 50  0001 C CNN
F 3 "" H 4210 1755 50  0000 C CNN
F 4 "885012207072" H 4210 1755 60  0001 C CNN "Part#"
	1    4210 1755
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:GND-MeowMeow #PWR017
U 1 1 5AFCCF73
P 4210 1885
F 0 "#PWR017" H 4210 1635 50  0001 C CNN
F 1 "GND" H 4210 1735 50  0000 C CNN
F 2 "" H 4210 1885 50  0000 C CNN
F 3 "" H 4210 1885 50  0000 C CNN
	1    4210 1885
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:GND-MeowMeow #PWR018
U 1 1 5AFCF78D
P 4025 4740
F 0 "#PWR018" H 4025 4490 50  0001 C CNN
F 1 "GND" H 4025 4590 50  0000 C CNN
F 2 "" H 4025 4740 50  0000 C CNN
F 3 "" H 4025 4740 50  0000 C CNN
	1    4025 4740
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow P12
U 1 1 5AFCFBC0
P 8840 5005
F 0 "P12" H 8840 5105 60  0000 C CNN
F 1 "KEY_UP_ARROW" H 8840 4905 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 8840 5005 60  0001 C CNN
F 3 "" H 8840 5005 60  0001 C CNN
	1    8840 5005
	0    -1   -1   0   
$EndComp
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow P11
U 1 1 5AFCFBC7
P 8570 5005
F 0 "P11" H 8570 5105 60  0000 C CNN
F 1 "W" H 8585 4935 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 8570 5005 60  0001 C CNN
F 3 "" H 8570 5005 60  0001 C CNN
	1    8570 5005
	0    -1   -1   0   
$EndComp
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow P8
U 1 1 5AFCFBCE
P 7990 5015
F 0 "P8" H 7990 5115 60  0000 C CNN
F 1 "MOUSE_LEFT" H 7990 4915 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 7990 5015 60  0001 C CNN
F 3 "" H 7990 5015 60  0001 C CNN
	1    7990 5015
	0    -1   -1   0   
$EndComp
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow P1
U 1 1 5AFCFBD5
P 7685 5005
F 0 "P1" H 7685 5105 60  0000 C CNN
F 1 "SPACE" H 7685 4905 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 7685 5005 60  0001 C CNN
F 3 "" H 7685 5005 60  0001 C CNN
	1    7685 5005
	0    -1   -1   0   
$EndComp
Text Label 8840 5375 3    60   ~ 0
Y5
Text Label 8570 5365 3    60   ~ 0
Y8
Text Label 7990 5340 3    60   ~ 0
Y14
Text Label 7685 5330 3    60   ~ 0
Y15
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow P10
U 1 1 5AFCFBE0
P 8290 5010
F 0 "P10" H 8290 5110 60  0000 C CNN
F 1 "A" H 8290 4945 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 8290 5010 60  0001 C CNN
F 3 "" H 8290 5010 60  0001 C CNN
	1    8290 5010
	0    -1   -1   0   
$EndComp
Text Label 4115 3255 0    60   ~ 0
D8
$Comp
L Device:Fuse_Small F1
U 1 1 5AFD1CE2
P 7425 3160
F 0 "F1" H 7425 3100 50  0000 C CNN
F 1 "0.5A" H 7425 3220 50  0000 C CNN
F 2 "Resistors_SMD:R_1812_HandSoldering" H 7425 3160 50  0001 C CNN
F 3 "" H 7425 3160 50  0000 C CNN
F 4 "0ZCG0030FF2C" H 7425 3160 60  0001 C CNN "Part#"
	1    7425 3160
	1    0    0    -1  
$EndComp
Text Label 2355 3855 2    60   ~ 0
I2S_D1/X7
Text Label 4100 3055 0    60   ~ 0
I2S_SCK
Text Label 2320 3355 2    60   ~ 0
MOSI
Text Label 2315 3155 2    60   ~ 0
MISO
Text Label 2315 3455 2    60   ~ 0
SCK
Text Label 2315 3255 2    60   ~ 0
CS
Text Label 2310 2955 2    60   ~ 0
TX/X2
Text Label 2310 3055 2    60   ~ 0
RX/X3
Text Notes 1305 3180 0    60   ~ 0
SERCOM4: SPI
Text Notes 1320 1985 0    60   ~ 0
SERCOM1: I2C
Text Notes 1205 2935 0    60   ~ 0
SERCOM2: Serial
NoConn ~ 2495 2755
NoConn ~ 2495 2855
NoConn ~ 3895 2955
NoConn ~ 3895 3155
NoConn ~ 2495 3555
NoConn ~ 2495 3655
NoConn ~ 2495 3755
NoConn ~ 2495 3955
NoConn ~ 2495 4055
NoConn ~ 2495 4155
NoConn ~ 2495 4555
NoConn ~ 2495 4655
NoConn ~ 2495 4255
Text Notes 7745 5643 0    60   ~ 0
PIN EXTRAS
Text Label 10025 6130 0    60   ~ 0
I2S_SCK
Text Label 9340 6130 2    60   ~ 0
I2S_D1/X7
Text Label 10025 6030 0    60   ~ 0
TX/X2
Text Label 9335 6030 2    60   ~ 0
RX/X3
Text Label 8346 5938 0    60   ~ 0
MISO
Text Label 7631 6038 2    60   ~ 0
SCK
Text Label 10020 5930 0    60   ~ 0
CS
Text Label 8341 6038 0    60   ~ 0
SDA
Text Label 7631 6138 2    60   ~ 0
SCL
$Comp
L Meow-Meow-rescue:GND-MeowMeow #PWR019
U 1 1 5AFF5159
P 9335 5930
F 0 "#PWR019" H 9335 5680 50  0001 C CNN
F 1 "GND" H 9335 5780 50  0000 C CNN
F 2 "" H 9335 5930 50  0000 C CNN
F 3 "" H 9335 5930 50  0000 C CNN
	1    9335 5930
	-1   0    0    1   
$EndComp
$Comp
L Meow-Meow-rescue:GND-MeowMeow #PWR020
U 1 1 5B0727F0
P 1590 1675
F 0 "#PWR020" H 1590 1425 50  0001 C CNN
F 1 "GND" H 1590 1525 50  0000 C CNN
F 2 "" H 1590 1675 50  0000 C CNN
F 3 "" H 1590 1675 50  0000 C CNN
	1    1590 1675
	1    0    0    -1  
$EndComp
Wire Wire Line
	2495 3855 2355 3855
Wire Wire Line
	7180 3160 7180 3135
Wire Wire Line
	7325 3160 7180 3160
Wire Wire Line
	3895 3255 4115 3255
Wire Wire Line
	8290 5110 8290 5370
Wire Wire Line
	7685 5105 7685 5330
Wire Wire Line
	7990 5115 7990 5340
Wire Wire Line
	8570 5105 8570 5365
Wire Wire Line
	8840 5105 8840 5375
Wire Wire Line
	2495 2055 2340 2055
Wire Wire Line
	2495 1955 2340 1955
Wire Wire Line
	4210 1855 4210 1885
Connection ~ 3990 1855
Wire Wire Line
	3895 1855 3990 1855
Connection ~ 3990 1755
Wire Wire Line
	3895 1755 3990 1755
Connection ~ 3990 1655
Wire Wire Line
	3895 1655 3990 1655
Wire Wire Line
	3990 1565 3990 1655
Wire Wire Line
	3990 1955 3895 1955
Wire Wire Line
	3945 2285 3945 2340
Wire Wire Line
	3945 2055 3945 2085
Wire Wire Line
	3895 2055 3945 2055
Wire Wire Line
	3895 2555 4070 2555
Wire Wire Line
	3895 2655 4070 2655
Wire Wire Line
	2495 2655 2335 2655
Wire Wire Line
	2495 2555 2335 2555
Wire Wire Line
	2495 2455 2335 2455
Wire Wire Line
	2495 2355 2330 2355
Wire Wire Line
	3895 2855 4070 2855
Wire Wire Line
	3895 2755 4070 2755
Wire Wire Line
	2495 2255 2325 2255
Wire Wire Line
	2495 2155 2335 2155
Wire Wire Line
	2495 4455 2325 4455
Wire Wire Line
	2495 4355 2325 4355
Connection ~ 4025 4455
Wire Wire Line
	3895 4455 4025 4455
Connection ~ 4025 4655
Wire Wire Line
	4025 4655 3895 4655
Connection ~ 4025 4555
Wire Wire Line
	4025 4555 3895 4555
Wire Wire Line
	4025 4355 4025 4455
Wire Wire Line
	3895 4355 4025 4355
Wire Wire Line
	2495 4855 2295 4855
Wire Wire Line
	2495 4755 2295 4755
Wire Wire Line
	8250 1640 8250 1720
Wire Wire Line
	8315 1640 8250 1640
Wire Wire Line
	8030 1540 8030 1600
Connection ~ 8030 1290
Wire Wire Line
	8030 1340 8030 1290
Wire Wire Line
	9605 1555 9605 1630
Wire Wire Line
	9370 1555 9370 1630
Connection ~ 9605 1290
Wire Wire Line
	9605 1290 9605 1355
Connection ~ 9370 1290
Wire Wire Line
	9370 1355 9370 1290
Wire Wire Line
	9945 1290 9945 1225
Wire Wire Line
	9265 1290 9370 1290
Wire Wire Line
	7590 1290 7590 1175
Wire Wire Line
	7590 1290 8030 1290
Wire Wire Line
	9795 5095 9795 5360
Wire Wire Line
	10710 3515 10790 3515
Wire Wire Line
	10130 3515 10055 3515
Wire Wire Line
	10410 3515 10330 3515
Wire Wire Line
	10710 3100 10790 3100
Wire Wire Line
	10130 3100 10055 3100
Wire Wire Line
	10410 3100 10330 3100
Wire Notes Line
	6970 485  6965 485 
Wire Notes Line
	6970 2350 6970 485 
Wire Notes Line
	6970 2360 11205 2360
Wire Notes Line
	6970 4595 6970 2360
Wire Notes Line
	6975 4595 6975 6540
Wire Notes Line
	11190 4595 6960 4595
Wire Wire Line
	9155 5105 9155 5370
Wire Wire Line
	9485 5095 9485 5360
Wire Wire Line
	10130 5085 10130 5365
Wire Wire Line
	10435 5085 10435 5365
Wire Wire Line
	7635 3160 7525 3160
Wire Wire Line
	7635 3260 7525 3260
Wire Wire Line
	7635 3360 7525 3360
Wire Wire Line
	7530 3560 7530 3600
Wire Wire Line
	7635 3560 7530 3560
Wire Wire Line
	3895 3055 4100 3055
Wire Wire Line
	2495 3155 2315 3155
Wire Wire Line
	2495 3255 2315 3255
Wire Wire Line
	2495 3355 2320 3355
Wire Wire Line
	2495 3455 2315 3455
Wire Wire Line
	2495 2955 2310 2955
Wire Wire Line
	2495 3055 2310 3055
Wire Notes Line
	6990 5490 11235 5490
Wire Notes Line
	11215 5515 11215 5520
Wire Wire Line
	1635 1655 1590 1655
Wire Wire Line
	1590 1655 1590 1675
Wire Wire Line
	8885 3395 8755 3395
$Comp
L Meow-Meow-rescue:CONN_02X03-MeowMeow J2
U 1 1 5B57974D
P 9690 6030
F 0 "J2" H 9740 6230 50  0000 C CNN
F 1 "Backpack2" H 9740 5830 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm_SMD" H 9690 6030 50  0001 C CNN
F 3 "" H 9690 6030 50  0001 C CNN
	1    9690 6030
	1    0    0    -1  
$EndComp
Text Label 7631 5938 2    60   ~ 0
MOSI
$Comp
L Meow-Meow-rescue:CONN_02X03-MeowMeow J1
U 1 1 5B57970D
P 7966 6038
F 0 "J1" H 8016 6238 50  0000 C CNN
F 1 "Backpack1" H 8016 5838 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm_SMD" H 7966 6038 50  0001 C CNN
F 3 "" H 7966 6038 50  0001 C CNN
	1    7966 6038
	1    0    0    -1  
$EndComp
Wire Wire Line
	7631 5938 7716 5938
Wire Wire Line
	7631 6038 7716 6038
Wire Wire Line
	7631 6138 7716 6138
$Comp
L Meow-Meow-rescue:VCC-MeowMeow #PWR021
U 1 1 5B26C1A1
P 8623 6138
F 0 "#PWR021" H 8623 5988 50  0001 C CNN
F 1 "VCC" H 8623 6278 50  0000 C CNN
F 2 "" H 8623 6138 50  0000 C CNN
F 3 "" H 8623 6138 50  0000 C CNN
	1    8623 6138
	1    0    0    -1  
$EndComp
Wire Wire Line
	8216 5938 8346 5938
Wire Wire Line
	8216 6038 8341 6038
Wire Wire Line
	9940 5930 10020 5930
Wire Wire Line
	9940 6030 10025 6030
Wire Wire Line
	9940 6130 10025 6130
Wire Wire Line
	9440 5930 9335 5930
Wire Wire Line
	9440 6030 9335 6030
Wire Wire Line
	9440 6130 9340 6130
Text Label 8290 5370 3    60   ~ 0
Y9
$Comp
L Connector_Generic:Conn_02x02_Counter_Clockwise J3
U 1 1 5B590A39
P 9085 3395
F 0 "J3" H 9135 3495 50  0000 C CNN
F 1 "SWD" H 9135 3195 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x02_Pitch2.54mm_SMD" H 9085 3395 50  0001 C CNN
F 3 "" H 9085 3395 50  0001 C CNN
	1    9085 3395
	1    0    0    -1  
$EndComp
Wire Wire Line
	9385 3495 9470 3495
Wire Wire Line
	3990 1855 3990 1955
Wire Wire Line
	3990 1755 3990 1855
Wire Wire Line
	3990 1655 4210 1655
Wire Wire Line
	3990 1655 3990 1755
Wire Wire Line
	4025 4455 4025 4555
Wire Wire Line
	4025 4655 4025 4740
Wire Wire Line
	4025 4555 4025 4655
Wire Wire Line
	8030 1290 8315 1290
Wire Wire Line
	9605 1290 9945 1290
Wire Wire Line
	9370 1290 9605 1290
Wire Wire Line
	8216 6138 8623 6138
Wire Wire Line
	8354 3495 8354 3477
Wire Wire Line
	8354 3495 8885 3495
Wire Wire Line
	9831 3395 9831 3431
Wire Wire Line
	9385 3395 9831 3395
$Comp
L Meow-Meow-rescue:SW_Push-MeowMeow SW1
U 1 1 5B071A82
P 1835 1655
F 0 "SW1" H 1885 1755 50  0000 L CNN
F 1 "SW_Push" H 1835 1595 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_TL3342" H 1835 1855 50  0001 C CNN
F 3 "" H 1835 1855 50  0000 C CNN
	1    1835 1655
	1    0    0    -1  
$EndComp
Wire Wire Line
	2035 1655 2495 1655
$EndSCHEMATC
