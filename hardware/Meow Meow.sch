EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Meow Meow"
Date "2021-06-20"
Rev "2.0"
Comp "Electronic Cats"
Comment1 "Andres Sabas"
Comment2 "[OSHW] MX000003 | Certified open source hardware | oshwa.org/cert."
Comment3 ""
Comment4 ""
$EndDescr
Text Label 1915 3915 2    50   ~ 0
D+
Text Label 1915 3815 2    50   ~ 0
D-
Text Label 1925 1615 2    50   ~ 0
Y0
Text Label 1925 1815 2    50   ~ 0
Y2
Text Label 3530 2315 0    50   ~ 0
Y15
Text Label 3535 2215 0    50   ~ 0
Y14
NoConn ~ 7635 3460
$Comp
L Meow-Meow-rescue:GND-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR01
U 1 1 5AD96563
P 7530 3600
F 0 "#PWR01" H 7530 3350 50  0001 C CNN
F 1 "GND" H 7530 3450 50  0000 C CNN
F 2 "" H 7530 3600 50  0000 C CNN
F 3 "" H 7530 3600 50  0000 C CNN
	1    7530 3600
	1    0    0    -1  
$EndComp
Text Label 7525 3260 0    60   ~ 0
D-
Text Label 7525 3360 0    60   ~ 0
D+
Text Notes 8765 650  0    60   ~ 0
POWER AND FILTERING
Text Notes 8290 2550 0    60   ~ 0
USB, SWD PROGRAMMING AND LEDS
Text Notes 8948 4784 0    60   ~ 0
SENSOR CAPACITIVE
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue P7
U 1 1 5AD981B5
P 10455 5616
F 0 "P7" H 10455 5716 60  0000 C CNN
F 1 "S" H 10455 5516 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 10455 5616 60  0001 C CNN
F 3 "" H 10455 5616 60  0001 C CNN
	1    10455 5616
	0    -1   -1   0   
$EndComp
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue P6
U 1 1 5AD9829A
P 10150 5616
F 0 "P6" H 10150 5716 60  0000 C CNN
F 1 "D" H 10150 5516 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 10150 5616 60  0001 C CNN
F 3 "" H 10150 5616 60  0001 C CNN
	1    10150 5616
	0    -1   -1   0   
$EndComp
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue P3
U 1 1 5AD98302
P 9505 5626
F 0 "P3" H 9505 5726 60  0000 C CNN
F 1 "KEY_RIGHT_ARROW" H 9505 5526 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 9505 5626 60  0001 C CNN
F 3 "" H 9505 5626 60  0001 C CNN
	1    9505 5626
	0    -1   -1   0   
$EndComp
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue P2
U 1 1 5AD9836F
P 9175 5636
F 0 "P2" H 9175 5736 60  0000 C CNN
F 1 "KEY_DOWN_ARROW" H 9175 5536 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 9175 5636 60  0001 C CNN
F 3 "" H 9175 5636 60  0001 C CNN
	1    9175 5636
	0    -1   -1   0   
$EndComp
Text Label 10455 5996 3    60   ~ 0
Y0
Text Label 10150 5996 3    60   ~ 0
Y1
Text Label 9505 5991 3    60   ~ 0
Y3
Text Label 9175 6001 3    60   ~ 0
Y4
$Comp
L Meow-Meow-rescue:C_Small-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue C4
U 1 1 5AD98E8E
P 7980 1440
F 0 "C4" H 7990 1510 50  0000 L CNN
F 1 "10uF" H 7769 1359 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7980 1440 50  0001 C CNN
F 3 "" H 7980 1440 50  0000 C CNN
F 4 "TMCUA0J106MTR2F" H 7980 1440 60  0001 C CNN "Part#"
	1    7980 1440
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:LED-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue D1
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
L Meow-Meow-rescue:R_Small-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue R2
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
L Meow-Meow-rescue:GND-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR03
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
L Meow-Meow-rescue:+3.3V-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR04
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
L Meow-Meow-rescue:LED-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue D2
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
L Meow-Meow-rescue:R_Small-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue R3
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
L Meow-Meow-rescue:GND-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR05
U 1 1 5AD999A6
P 10055 3515
F 0 "#PWR05" H 10055 3265 50  0001 C CNN
F 1 "GND" H 10055 3365 50  0000 C CNN
F 2 "" H 10055 3515 50  0000 C CNN
F 3 "" H 10055 3515 50  0000 C CNN
	1    10055 3515
	1    0    0    -1  
$EndComp
Text Label 8870 3380 2    60   ~ 0
SWDIO
Text Label 8875 3580 2    60   ~ 0
SWCLK
$Comp
L Meow-Meow-rescue:+3.3V-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR06
U 1 1 5AD9BCA9
P 8865 3280
F 0 "#PWR06" H 8865 3130 50  0001 C CNN
F 1 "+3.3V" H 8865 3420 50  0000 C CNN
F 2 "" H 8865 3280 50  0000 C CNN
F 3 "" H 8865 3280 50  0000 C CNN
	1    8865 3280
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:GND-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR07
U 1 1 5AD9BD50
P 8870 3680
F 0 "#PWR07" H 8870 3430 50  0001 C CNN
F 1 "GND" H 8875 3530 50  0000 C CNN
F 2 "" H 8870 3680 50  0000 C CNN
F 3 "" H 8870 3680 50  0000 C CNN
	1    8870 3680
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue P5
U 1 1 5AD9D9AC
P 9815 5626
F 0 "P5" H 9815 5726 60  0000 C CNN
F 1 "KEY_LEFT_ARROW" H 9815 5526 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 9815 5626 60  0001 C CNN
F 3 "" H 9815 5626 60  0001 C CNN
	1    9815 5626
	0    -1   -1   0   
$EndComp
Text Label 9815 5991 3    60   ~ 0
Y2
$Comp
L Meow-Meow-rescue:GND-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR08
U 1 1 5ADA067C
P 7980 1600
F 0 "#PWR08" H 7980 1350 50  0001 C CNN
F 1 "GND" H 7980 1450 50  0000 C CNN
F 2 "" H 7980 1600 50  0000 C CNN
F 3 "" H 7980 1600 50  0000 C CNN
	1    7980 1600
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:GND-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR09
U 1 1 5ADA0DDC
P 8595 1830
F 0 "#PWR09" H 8595 1580 50  0001 C CNN
F 1 "GND" H 8595 1680 50  0000 C CNN
F 2 "" H 8595 1830 50  0000 C CNN
F 3 "" H 8595 1830 50  0000 C CNN
	1    8595 1830
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:GND-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR014
U 1 1 5AE3E770
P 8035 3760
F 0 "#PWR014" H 8035 3510 50  0001 C CNN
F 1 "GND" H 8035 3610 50  0000 C CNN
F 2 "" H 8035 3760 50  0000 C CNN
F 3 "" H 8035 3760 50  0000 C CNN
	1    8035 3760
	1    0    0    -1  
$EndComp
Text Label 1925 1915 2    50   ~ 0
Y3
Text Label 1915 4415 2    60   ~ 0
SWCLK
Text Label 1910 4515 2    60   ~ 0
SWDIO
Text Label 1925 1415 2    50   ~ 0
SDA
Text Label 1925 1515 2    50   ~ 0
SCL
$Comp
L Meow-Meow-rescue:USB_OTG-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue P9
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
Text Label 1925 1715 2    50   ~ 0
Y1
Text Label 1925 2015 2    50   ~ 0
Y4
Text Label 1925 2115 2    50   ~ 0
Y5
Text Label 3535 1615 0    50   ~ 0
Y8
Text Label 3530 1715 0    50   ~ 0
Y9
$Comp
L Meow-Meow-rescue:+3.3V-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR016
U 1 1 5AFCCDC2
P 2740 1060
F 0 "#PWR016" H 2740 910 50  0001 C CNN
F 1 "+3.3V" H 2740 1200 50  0000 C CNN
F 2 "" H 2740 1060 50  0000 C CNN
F 3 "" H 2740 1060 50  0000 C CNN
	1    2740 1060
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:C_Small-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue C2
U 1 1 5AFCCE9C
P 3140 845
F 0 "C2" H 3150 915 50  0000 L CNN
F 1 "0.1uF" H 3150 765 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3140 845 50  0001 C CNN
F 3 "" H 3140 845 50  0000 C CNN
F 4 "885012207072" H 3140 845 60  0001 C CNN "Part#"
	1    3140 845 
	0    -1   -1   0   
$EndComp
$Comp
L Meow-Meow-rescue:GND-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR017
U 1 1 5AFCCF73
P 3270 845
F 0 "#PWR017" H 3270 595 50  0001 C CNN
F 1 "GND" H 3270 695 50  0000 C CNN
F 2 "" H 3270 845 50  0000 C CNN
F 3 "" H 3270 845 50  0000 C CNN
	1    3270 845 
	0    -1   -1   0   
$EndComp
$Comp
L Meow-Meow-rescue:GND-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR018
U 1 1 5AFCF78D
P 2790 4990
F 0 "#PWR018" H 2790 4740 50  0001 C CNN
F 1 "GND" H 2790 4840 50  0000 C CNN
F 2 "" H 2790 4990 50  0000 C CNN
F 3 "" H 2790 4990 50  0000 C CNN
	1    2790 4990
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue P12
U 1 1 5AFCFBC0
P 8860 5636
F 0 "P12" H 8860 5736 60  0000 C CNN
F 1 "KEY_UP_ARROW" H 8860 5536 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 8860 5636 60  0001 C CNN
F 3 "" H 8860 5636 60  0001 C CNN
	1    8860 5636
	0    -1   -1   0   
$EndComp
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue P11
U 1 1 5AFCFBC7
P 8590 5636
F 0 "P11" H 8590 5736 60  0000 C CNN
F 1 "W" H 8605 5566 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 8590 5636 60  0001 C CNN
F 3 "" H 8590 5636 60  0001 C CNN
	1    8590 5636
	0    -1   -1   0   
$EndComp
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue P8
U 1 1 5AFCFBCE
P 8010 5646
F 0 "P8" H 8010 5746 60  0000 C CNN
F 1 "MOUSE_LEFT" H 8010 5546 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 8010 5646 60  0001 C CNN
F 3 "" H 8010 5646 60  0001 C CNN
	1    8010 5646
	0    -1   -1   0   
$EndComp
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue P1
U 1 1 5AFCFBD5
P 7705 5636
F 0 "P1" H 7705 5736 60  0000 C CNN
F 1 "SPACE" H 7705 5536 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 7705 5636 60  0001 C CNN
F 3 "" H 7705 5636 60  0001 C CNN
	1    7705 5636
	0    -1   -1   0   
$EndComp
Text Label 8860 6006 3    60   ~ 0
Y5
Text Label 8590 5996 3    60   ~ 0
Y8
Text Label 8010 5971 3    60   ~ 0
Y14
Text Label 7705 5961 3    60   ~ 0
Y15
$Comp
L Meow-Meow-rescue:CONN_01X01_FEMALE-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue P10
U 1 1 5AFCFBE0
P 8310 5641
F 0 "P10" H 8310 5741 60  0000 C CNN
F 1 "A" H 8310 5576 60  0000 C CNN
F 2 "Connectors_EC:SEWALLI_renew" H 8310 5641 60  0001 C CNN
F 3 "" H 8310 5641 60  0001 C CNN
	1    8310 5641
	0    -1   -1   0   
$EndComp
Text Label 3530 2415 0    50   ~ 0
GPIO08
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
Text Label 3735 3715 2    50   ~ 0
GPIO13
Text Label 1930 3215 2    50   ~ 0
MOSI
Text Label 1920 3315 2    50   ~ 0
SCK
Text Label 1930 2615 2    50   ~ 0
TX
Text Label 1925 2715 2    50   ~ 0
RX
Text Notes 970  3385 0    60   ~ 0
SERCOM4: SPI
Text Notes 1120 1485 0    60   ~ 0
SERCOM1: I2C
Text Notes 1030 2650 0    60   ~ 0
SERCOM2: Serial
Text Notes 3490 5435 0    60   ~ 0
PIN EXTRAS
$Comp
L Meow-Meow-rescue:GND-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR020
U 1 1 5B0727F0
P 665 4540
F 0 "#PWR020" H 665 4290 50  0001 C CNN
F 1 "GND" H 665 4390 50  0000 C CNN
F 2 "" H 665 4540 50  0000 C CNN
F 3 "" H 665 4540 50  0000 C CNN
	1    665  4540
	1    0    0    -1  
$EndComp
Wire Wire Line
	7180 3160 7180 3135
Wire Wire Line
	7325 3160 7180 3160
Wire Wire Line
	8310 5741 8310 6001
Wire Wire Line
	7705 5736 7705 5961
Wire Wire Line
	8010 5746 8010 5971
Wire Wire Line
	8590 5736 8590 5996
Wire Wire Line
	8860 5736 8860 6006
Wire Wire Line
	3240 845  3270 845 
Wire Wire Line
	2135 940  2080 940 
Wire Wire Line
	7980 1540 7980 1600
Connection ~ 7980 1290
Wire Wire Line
	7980 1340 7980 1290
Wire Wire Line
	7540 1290 7540 1175
Wire Wire Line
	7540 1290 7980 1290
Wire Wire Line
	9815 5726 9815 5991
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
	9175 5736 9175 6001
Wire Wire Line
	9505 5726 9505 5991
Wire Wire Line
	10150 5716 10150 5996
Wire Wire Line
	10455 5716 10455 5996
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
Wire Notes Line
	11215 5515 11215 5520
Wire Wire Line
	710  4520 665  4520
Wire Wire Line
	665  4520 665  4540
Text Label 8310 6001 3    60   ~ 0
Y9
Wire Wire Line
	3040 1065 3040 845 
$Comp
L Meow-Meow-rescue:SW_Push-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue SW1
U 1 1 5B071A82
P 910 4520
F 0 "SW1" H 960 4620 50  0000 L CNN
F 1 "RESET" H 910 4460 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_TL3342" H 910 4720 50  0001 C CNN
F 3 "" H 910 4720 50  0000 C CNN
	1    910  4520
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J2
U 1 1 5D4E69E8
P 3975 6495
F 0 "J2" H 3975 7095 50  0000 C CNN
F 1 "Conn_Right" V 4075 6295 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical_SMD_Pin1Right" H 3975 6495 50  0001 C CNN
F 3 "~" H 3975 6495 50  0001 C CNN
	1    3975 6495
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x16 J1
U 1 1 5D4E7BAF
P 3325 6695
F 0 "J1" H 3325 7495 50  0000 C CNN
F 1 "Conn_Left" V 3425 6695 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical_SMD_Pin1Left" H 3325 6695 50  0001 C CNN
F 3 "~" H 3325 6695 50  0001 C CNN
	1    3325 6695
	1    0    0    -1  
$EndComp
Wire Wire Line
	3125 5995 3025 5995
Wire Wire Line
	3125 6095 3075 6095
Wire Wire Line
	3125 6195 3025 6195
Wire Wire Line
	3125 6295 3075 6295
Wire Wire Line
	3125 6395 3025 6395
Wire Wire Line
	3125 6495 3025 6495
Wire Wire Line
	3125 6595 3025 6595
Wire Wire Line
	3125 6695 3025 6695
Wire Wire Line
	3125 6795 3025 6795
Wire Wire Line
	3125 6895 3025 6895
Wire Wire Line
	3125 6995 3025 6995
Wire Wire Line
	3125 7095 3025 7095
Wire Wire Line
	3125 7195 3025 7195
Wire Wire Line
	3125 7295 3025 7295
Wire Wire Line
	3125 7395 3025 7395
Wire Wire Line
	3125 7495 3025 7495
Wire Wire Line
	4175 5995 4225 5995
Text Label 3025 6995 2    50   ~ 0
SCK
Text Label 3025 7095 2    50   ~ 0
MOSI
Text Label 3025 7195 2    50   ~ 0
MISO
Text Label 3025 7295 2    50   ~ 0
RX
Text Label 3025 7395 2    50   ~ 0
TX
Text Label 3025 7495 2    50   ~ 0
MISC
$Comp
L power:VBUS #PWR0104
U 1 1 5D53E609
P 4475 5945
F 0 "#PWR0104" H 4475 5795 50  0001 C CNN
F 1 "VBUS" H 4475 6095 50  0000 C CNN
F 2 "" H 4475 5945 50  0001 C CNN
F 3 "" H 4475 5945 50  0001 C CNN
	1    4475 5945
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 5D541790
P 3075 5895
F 0 "#PWR0107" H 3075 5745 50  0001 C CNN
F 1 "+3.3V" H 3075 6045 50  0000 C CNN
F 2 "" H 3075 5895 50  0001 C CNN
F 3 "" H 3075 5895 50  0001 C CNN
	1    3075 5895
	1    0    0    -1  
$EndComp
Wire Wire Line
	3075 6295 3075 7545
$Comp
L power:GND #PWR0108
U 1 1 5D545285
P 3075 7545
F 0 "#PWR0108" H 3075 7295 50  0001 C CNN
F 1 "GND" H 3075 7395 50  0000 C CNN
F 2 "" H 3075 7545 50  0001 C CNN
F 3 "" H 3075 7545 50  0001 C CNN
	1    3075 7545
	1    0    0    -1  
$EndComp
Wire Wire Line
	3075 5895 3075 6095
Wire Wire Line
	4475 5945 4475 6195
Wire Wire Line
	4175 6195 4475 6195
Text Label 4225 6895 0    50   ~ 0
GPIO05
Text Label 4225 6795 0    50   ~ 0
GPIO06
Text Label 4225 6695 0    50   ~ 0
GPIO09
Text Label 4225 6595 0    50   ~ 0
GPIO10
Text Label 4225 6495 0    50   ~ 0
GPIO11
Text Label 4225 6395 0    50   ~ 0
GPIO12
Text Label 4225 6295 0    50   ~ 0
GPIO13
Text Label 4225 6995 0    50   ~ 0
SCL
Text Label 4225 7095 0    50   ~ 0
SDA
Wire Wire Line
	4175 7095 4225 7095
Wire Wire Line
	4175 6995 4225 6995
Wire Wire Line
	4175 6895 4225 6895
Wire Wire Line
	4175 6795 4225 6795
Wire Wire Line
	4175 6695 4225 6695
Wire Wire Line
	4175 6595 4225 6595
Wire Wire Line
	4175 6495 4225 6495
Wire Wire Line
	4175 6395 4225 6395
Wire Wire Line
	4175 6295 4225 6295
Wire Wire Line
	4175 6095 4225 6095
Text Label 4225 6095 0    50   ~ 0
EN
Wire Notes Line
	460  5235 6960 5235
Text Label 1920 3515 2    50   ~ 0
GPIO05
Text Label 1920 3415 2    50   ~ 0
GPIO06
Text Label 1750 4115 0    50   ~ 0
GPIO09
Text Label 1920 4715 2    50   ~ 0
RESET
$Comp
L power:VBUS #PWR0101
U 1 1 5E536275
P 7180 3135
F 0 "#PWR0101" H 7180 2985 50  0001 C CNN
F 1 "VBUS" H 7195 3308 50  0000 C CNN
F 2 "" H 7180 3135 50  0001 C CNN
F 3 "" H 7180 3135 50  0001 C CNN
	1    7180 3135
	1    0    0    -1  
$EndComp
Text Notes 2348 6680 0    50   ~ 0
Analog A0-A3
Wire Wire Line
	9020 1290 9255 1290
Wire Wire Line
	9255 1290 9595 1290
Wire Wire Line
	8915 1290 9020 1290
Wire Wire Line
	9595 1290 9595 1225
Wire Wire Line
	9020 1355 9020 1290
Connection ~ 9020 1290
Wire Wire Line
	9255 1290 9255 1355
Connection ~ 9255 1290
Wire Wire Line
	9020 1555 9020 1630
Wire Wire Line
	9255 1555 9255 1630
$Comp
L Meow-Meow-rescue:GND-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR013
U 1 1 5ADA141E
P 9020 1630
F 0 "#PWR013" H 9020 1380 50  0001 C CNN
F 1 "GND" H 9020 1480 50  0000 C CNN
F 2 "" H 9020 1630 50  0000 C CNN
F 3 "" H 9020 1630 50  0000 C CNN
	1    9020 1630
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:GND-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR012
U 1 1 5ADA139A
P 9255 1630
F 0 "#PWR012" H 9255 1380 50  0001 C CNN
F 1 "GND" H 9255 1480 50  0000 C CNN
F 2 "" H 9255 1630 50  0000 C CNN
F 3 "" H 9255 1630 50  0000 C CNN
	1    9255 1630
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:+3.3V-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR011
U 1 1 5ADA11F4
P 9595 1225
F 0 "#PWR011" H 9595 1075 50  0001 C CNN
F 1 "+3.3V" H 9595 1365 50  0000 C CNN
F 2 "" H 9595 1225 50  0000 C CNN
F 3 "" H 9595 1225 50  0000 C CNN
	1    9595 1225
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:C_Small-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue C6
U 1 1 5AD98F7F
P 9255 1455
F 0 "C6" H 9265 1525 50  0000 L CNN
F 1 "10uF" H 9265 1375 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9255 1455 50  0001 C CNN
F 3 "" H 9255 1455 50  0000 C CNN
F 4 "TMCUA0J106MTR2F" H 9255 1455 60  0001 C CNN "Part#"
	1    9255 1455
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:C_Small-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue C5
U 1 1 5AD98EFB
P 9020 1455
F 0 "C5" H 9030 1525 50  0000 L CNN
F 1 "0.1uF" H 8765 1385 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9020 1455 50  0001 C CNN
F 3 "" H 9020 1455 50  0000 C CNN
F 4 "885012207072" H 9020 1455 60  0001 C CNN "Part#"
	1    9020 1455
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0102
U 1 1 5E5A1BDB
P 7540 1175
F 0 "#PWR0102" H 7540 1025 50  0001 C CNN
F 1 "VBUS" H 7555 1348 50  0000 C CNN
F 2 "" H 7540 1175 50  0001 C CNN
F 3 "" H 7540 1175 50  0001 C CNN
	1    7540 1175
	1    0    0    -1  
$EndComp
Text Label 1930 2515 2    50   ~ 0
A0
Text Label 1930 2415 2    50   ~ 0
A1
Text Label 3025 6395 2    50   ~ 0
A0
Text Label 3025 6495 2    50   ~ 0
A1
$Comp
L MCU_Microchip_SAMD:ATSAMD21G18A-M U1
U 1 1 60D1387A
P 2740 3015
F 0 "U1" H 3300 1125 50  0000 C CNN
F 1 "ATSAMD21G18A-M" H 2270 1140 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-48-1EP_7x7mm_P0.5mm_EP5.15x5.15mm" H 4140 1165 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/SAM_D21_DA1_Family_Data%20Sheet_DS40001882E.pdf" H 2740 4015 50  0001 C CNN
	1    2740 3015
	1    0    0    -1  
$EndComp
Wire Wire Line
	2040 1415 1925 1415
Wire Wire Line
	1925 1515 2040 1515
Wire Wire Line
	2040 1615 1925 1615
Wire Wire Line
	2040 1715 1925 1715
Wire Wire Line
	2040 1815 1925 1815
Wire Wire Line
	2040 1915 1925 1915
Wire Wire Line
	2040 2015 1925 2015
Wire Wire Line
	2040 2115 1925 2115
Wire Wire Line
	2040 2215 1930 2215
Wire Wire Line
	2040 2315 1930 2315
Wire Wire Line
	2040 2415 1930 2415
Wire Wire Line
	2040 2515 1930 2515
Wire Wire Line
	2040 2615 1930 2615
Wire Wire Line
	2040 2715 1925 2715
Wire Wire Line
	2040 2815 1925 2815
Wire Wire Line
	2040 2915 1930 2915
Wire Wire Line
	2040 3015 1930 3015
Wire Wire Line
	2040 3115 1930 3115
Wire Wire Line
	2040 3215 1930 3215
Wire Wire Line
	2040 3315 1920 3315
Wire Wire Line
	2040 3415 1920 3415
Wire Wire Line
	2040 3515 1920 3515
Wire Wire Line
	2040 3615 1920 3615
Wire Wire Line
	2040 3715 1915 3715
Wire Wire Line
	2040 3815 1915 3815
Wire Wire Line
	2040 3915 1915 3915
Wire Wire Line
	2040 4215 1905 4215
Wire Wire Line
	2040 4415 1915 4415
Wire Wire Line
	2040 4515 1910 4515
Wire Wire Line
	2040 4715 1920 4715
Wire Wire Line
	2740 4915 2740 4990
Wire Wire Line
	2740 4990 2790 4990
Wire Wire Line
	2840 4915 2840 4990
Wire Wire Line
	2840 4990 2790 4990
Connection ~ 2790 4990
Wire Wire Line
	3440 1615 3535 1615
Wire Wire Line
	3440 1715 3530 1715
Wire Wire Line
	3440 2215 3535 2215
Wire Wire Line
	3440 2315 3530 2315
Wire Wire Line
	3440 2415 3530 2415
Wire Wire Line
	3440 2515 3530 2515
Text Label 1930 2315 2    50   ~ 0
A2
Text Label 1930 2215 2    50   ~ 0
A3
Text Label 3025 6595 2    50   ~ 0
A2
Text Label 3025 6695 2    50   ~ 0
A3
NoConn ~ 3025 6195
NoConn ~ 3025 6895
NoConn ~ 3025 6795
Text Label 1920 3615 2    50   ~ 0
MISO
Text Notes 3900 780  0    60   ~ 0
MICROCONTROLLER SAMD21
Wire Wire Line
	2440 1115 2440 940 
Wire Wire Line
	2440 940  2335 940 
$Comp
L Meow-Meow-rescue:C_Small-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue C1
U 1 1 5AFCC5C3
P 2235 940
F 0 "C1" H 2245 1010 50  0000 L CNN
F 1 "1uF" H 2245 860 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2235 940 50  0001 C CNN
F 3 "" H 2235 940 50  0000 C CNN
F 4 "C2012X7R1C105K125AA" H 2235 940 60  0001 C CNN "Part#"
	1    2235 940 
	0    1    1    0   
$EndComp
$Comp
L Meow-Meow-rescue:GND-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR015
U 1 1 5AFCC90C
P 2080 940
F 0 "#PWR015" H 2080 690 50  0001 C CNN
F 1 "GND" H 2080 790 50  0000 C CNN
F 2 "" H 2080 940 50  0000 C CNN
F 3 "" H 2080 940 50  0000 C CNN
	1    2080 940 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2640 1115 2640 1065
Wire Wire Line
	2640 1065 2740 1065
Wire Wire Line
	3040 1065 3040 1115
Wire Wire Line
	2740 1115 2740 1065
Connection ~ 2740 1065
Wire Wire Line
	2740 1065 2840 1065
Wire Wire Line
	2840 1115 2840 1065
Connection ~ 2840 1065
Wire Wire Line
	2840 1065 3040 1065
Connection ~ 3040 1065
Wire Wire Line
	1110 4520 1190 4520
Text Label 1190 4520 0    50   ~ 0
RESET
NoConn ~ 1905 4215
Wire Wire Line
	8980 3280 8865 3280
Wire Wire Line
	8980 3380 8870 3380
Wire Wire Line
	8980 3580 8875 3580
Wire Wire Line
	8980 3680 8870 3680
NoConn ~ 4225 5995
$Comp
L MCU_Microchip_SAMD:ATSAMD21G18A-M U3
U 1 1 60D38881
P 5250 3050
F 0 "U3" H 5810 1160 50  0000 C CNN
F 1 "ATSAMD21G18A-M" H 4780 1175 50  0000 C CNN
F 2 "Package_QFP:TQFP-48_7x7mm_P0.5mm" H 6650 1200 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/SAM_D21_DA1_Family_Data%20Sheet_DS40001882E.pdf" H 5250 4050 50  0001 C CNN
	1    5250 3050
	1    0    0    -1  
$EndComp
Text Label 4550 1450 2    50   ~ 0
SDA
Text Label 4550 1550 2    50   ~ 0
SCL
Text Label 4550 1650 2    50   ~ 0
Y0
Text Label 4550 1750 2    50   ~ 0
Y1
Text Label 4550 1850 2    50   ~ 0
Y2
Text Label 4550 1950 2    50   ~ 0
Y3
Text Label 4550 2050 2    50   ~ 0
Y4
Text Label 4550 2150 2    50   ~ 0
Y5
Text Label 4550 2550 2    50   ~ 0
A0
Text Label 4550 2450 2    50   ~ 0
A1
Text Label 4550 2350 2    50   ~ 0
A2
Text Label 4550 2250 2    50   ~ 0
A3
Text Label 4550 2650 2    50   ~ 0
TX
Text Label 4550 2750 2    50   ~ 0
RX
Text Label 4550 3550 2    50   ~ 0
GPIO05
Text Label 4550 3450 2    50   ~ 0
GPIO06
Text Label 5950 2550 0    50   ~ 0
GPIO10
Text Label 4550 3250 2    50   ~ 0
MOSI
Text Label 4550 3350 2    50   ~ 0
SCK
Text Label 4550 2850 2    50   ~ 0
GPIO11
Text Label 6245 3650 2    50   ~ 0
GPIO12
Text Label 4550 3650 2    50   ~ 0
MISO
Text Label 6245 3750 2    50   ~ 0
GPIO13
Text Label 4550 3850 2    50   ~ 0
D-
Text Label 4550 3950 2    50   ~ 0
D+
NoConn ~ 4550 4250
Text Label 4550 4450 2    60   ~ 0
SWCLK
Text Label 4550 4550 2    60   ~ 0
SWDIO
Text Label 4550 4750 2    50   ~ 0
RESET
$Comp
L Meow-Meow-rescue:GND-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR0103
U 1 1 60D641FE
P 5300 5030
F 0 "#PWR0103" H 5300 4780 50  0001 C CNN
F 1 "GND" H 5300 4880 50  0000 C CNN
F 2 "" H 5300 5030 50  0000 C CNN
F 3 "" H 5300 5030 50  0000 C CNN
	1    5300 5030
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4950 5250 5000
Wire Wire Line
	5250 5000 5300 5000
Wire Wire Line
	5350 5000 5350 4950
Wire Wire Line
	5300 5030 5300 5000
Connection ~ 5300 5000
Wire Wire Line
	5300 5000 5350 5000
Text Label 5950 2450 0    50   ~ 0
GPIO08
Text Label 5950 2350 0    50   ~ 0
Y15
Text Label 5950 2250 0    50   ~ 0
Y14
Text Label 5950 1650 0    50   ~ 0
Y8
Text Label 5950 1750 0    50   ~ 0
Y9
$Comp
L Meow-Meow-rescue:+3.3V-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR0106
U 1 1 60DA474C
P 5250 1040
F 0 "#PWR0106" H 5250 890 50  0001 C CNN
F 1 "+3.3V" H 5250 1180 50  0000 C CNN
F 2 "" H 5250 1040 50  0000 C CNN
F 3 "" H 5250 1040 50  0000 C CNN
	1    5250 1040
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1150 5150 1090
Wire Wire Line
	5150 1090 5250 1090
Wire Wire Line
	5350 1090 5350 1150
Wire Wire Line
	5250 1150 5250 1090
Connection ~ 5250 1090
Wire Wire Line
	5250 1090 5350 1090
Wire Wire Line
	5250 1040 5250 1090
Wire Wire Line
	5350 1090 5550 1090
Wire Wire Line
	5550 1090 5550 1150
Connection ~ 5350 1090
Connection ~ 5550 1090
Text Label 2440 940  1    50   ~ 0
vddcore
Text Label 4950 1150 1    50   ~ 0
vddcore
Text Label 5550 970  1    50   ~ 0
vddana
Text Label 3040 850  2    50   ~ 0
vddana
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 60E39354
P 9180 3480
F 0 "J3" H 9260 3472 50  0000 L CNN
F 1 "Conn_01x06" H 9260 3381 50  0000 L CNN
F 2 "Connector:Tag-Connect_TC2030-IDC-NL_2x03_P1.27mm_Vertical" H 9180 3480 50  0001 C CNN
F 3 "~" H 9180 3480 50  0001 C CNN
	1    9180 3480
	1    0    0    -1  
$EndComp
NoConn ~ 8980 3780
Wire Wire Line
	8980 3480 8870 3480
Wire Wire Line
	4550 3750 4470 3750
Text Label 1915 3715 2    50   ~ 0
PA32
Text Label 4470 3750 2    50   ~ 0
PA32
Text Notes 3290 1145 0    138  ~ 0
QFN
Text Notes 4270 1145 0    138  ~ 0
TQFP
Wire Wire Line
	7980 1290 8265 1290
$Comp
L Meow-Meow-rescue:AP2114-HA U2
U 1 1 60D6F9DE
P 8565 1390
F 0 "U2" H 8590 1755 50  0000 C CNN
F 1 "AP2114-HA" H 8590 1664 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 8565 1690 50  0001 C CNN
F 3 "" H 8565 1690 50  0001 C CNN
	1    8565 1390
	1    0    0    -1  
$EndComp
Wire Wire Line
	8515 1740 8515 1795
Wire Wire Line
	8515 1795 8595 1795
Wire Wire Line
	8595 1795 8595 1830
Wire Wire Line
	8665 1740 8665 1795
Wire Wire Line
	8665 1795 8595 1795
Connection ~ 8595 1795
$Comp
L Meow-Meow-rescue:C_Small-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue C3
U 1 1 60D4D2CA
P 5745 1010
F 0 "C3" H 5755 1080 50  0000 L CNN
F 1 "0.1uF" H 5755 930 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5745 1010 50  0001 C CNN
F 3 "" H 5745 1010 50  0000 C CNN
F 4 "885012207072" H 5745 1010 60  0001 C CNN "Part#"
	1    5745 1010
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5645 1010 5550 1010
Wire Wire Line
	5550 970  5550 1010
Connection ~ 5550 1010
Wire Wire Line
	5550 1010 5550 1090
$Comp
L Meow-Meow-rescue:GND-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR0105
U 1 1 60D56BBF
P 6040 1070
F 0 "#PWR0105" H 6040 820 50  0001 C CNN
F 1 "GND" H 6040 920 50  0000 C CNN
F 2 "" H 6040 1070 50  0000 C CNN
F 3 "" H 6040 1070 50  0000 C CNN
	1    6040 1070
	1    0    0    -1  
$EndComp
Wire Wire Line
	6040 1070 6040 1010
Wire Wire Line
	6040 1010 5845 1010
Wire Wire Line
	3440 3615 3735 3615
Text Label 4270 4150 0    50   ~ 0
GPIO09
Wire Wire Line
	6245 3650 5950 3650
Wire Wire Line
	1750 4115 2040 4115
Wire Wire Line
	3735 3715 3440 3715
NoConn ~ 1930 2915
NoConn ~ 1930 3015
NoConn ~ 1930 3110
Wire Wire Line
	6245 3750 5950 3750
Wire Wire Line
	4270 4150 4550 4150
NoConn ~ 4550 2950
NoConn ~ 4550 3050
NoConn ~ 4550 3150
Text Label 1925 2815 2    50   ~ 0
GPIO11
Text Label 3530 2515 0    50   ~ 0
GPIO10
Text Label 3735 3615 2    50   ~ 0
GPIO12
NoConn ~ 8870 3480
NoConn ~ 3025 5995
Text Label 10790 3515 0    50   ~ 0
PA32
$Comp
L Meow-Meow-rescue:C_Small-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue C7
U 1 1 60EF8F53
P 3920 1280
F 0 "C7" H 3930 1350 50  0000 L CNN
F 1 "0.1uF" H 3930 1200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3920 1280 50  0001 C CNN
F 3 "" H 3920 1280 50  0000 C CNN
F 4 "885012207072" H 3920 1280 60  0001 C CNN "Part#"
	1    3920 1280
	1    0    0    -1  
$EndComp
$Comp
L Meow-Meow-rescue:+3.3V-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR02
U 1 1 60EF9E45
P 3920 1110
F 0 "#PWR02" H 3920 960 50  0001 C CNN
F 1 "+3.3V" H 3920 1250 50  0000 C CNN
F 2 "" H 3920 1110 50  0000 C CNN
F 3 "" H 3920 1110 50  0000 C CNN
	1    3920 1110
	1    0    0    -1  
$EndComp
Wire Wire Line
	3920 1110 3920 1180
$Comp
L Meow-Meow-rescue:GND-MeowMeow-Meow-Meow-rescue-Meow-Meow-rescue-Meow-Meow-rescue #PWR010
U 1 1 60F03F32
P 3920 1430
F 0 "#PWR010" H 3920 1180 50  0001 C CNN
F 1 "GND" H 3920 1280 50  0000 C CNN
F 2 "" H 3920 1430 50  0000 C CNN
F 3 "" H 3920 1430 50  0000 C CNN
	1    3920 1430
	1    0    0    -1  
$EndComp
Wire Wire Line
	3920 1380 3920 1430
$EndSCHEMATC
