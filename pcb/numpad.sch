EESchema Schematic File Version 2  date to 13. syyskuuta 2012 16.19.21
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:my_parts
LIBS:numpad-cache
EELAYER 25  0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "USB Cherry Numpad"
Date "13 sep 2012"
Rev "1"
Comp "Tuomas Nylund"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 5500 6100
Wire Wire Line
	5600 6100 5500 6100
Connection ~ 5500 5800
Wire Wire Line
	5600 5800 5500 5800
Connection ~ 5500 5500
Wire Wire Line
	5600 5500 5500 5500
Wire Wire Line
	2150 3550 2050 3550
Wire Wire Line
	2050 3650 2150 3650
Wire Wire Line
	1550 3550 1500 3550
Wire Wire Line
	1500 3650 1550 3650
Wire Wire Line
	1500 3450 2150 3450
Wire Wire Line
	2150 3750 1650 3750
Wire Wire Line
	1650 3750 1650 3850
Wire Wire Line
	1650 3850 1500 3850
Wire Wire Line
	1550 4550 1550 3850
Connection ~ 1550 3850
Wire Wire Line
	2100 4550 2100 4350
Wire Wire Line
	2100 4350 2150 4350
Wire Wire Line
	1850 4350 1850 4550
Wire Wire Line
	2150 3850 1850 3850
Wire Wire Line
	1850 3850 1850 3950
Wire Wire Line
	1700 3350 1700 3450
Connection ~ 1700 3450
Wire Wire Line
	2050 1850 2050 2250
Wire Wire Line
	2050 2250 2150 2250
Wire Wire Line
	2150 2150 2050 2150
Connection ~ 2050 2150
Wire Wire Line
	1100 1550 1100 1750
Wire Wire Line
	800  1650 1400 1650
Wire Wire Line
	800  1650 800  1550
Wire Wire Line
	1400 1650 1400 1550
Connection ~ 1100 1650
Wire Wire Line
	800  1000 1400 1000
Wire Wire Line
	800  1000 800  1150
Wire Wire Line
	1100 1000 1100 1150
Wire Wire Line
	1400 1000 1400 1150
Wire Wire Line
	3700 1550 3700 1400
Wire Wire Line
	3000 1550 3000 1400
Wire Wire Line
	3050 900  3000 900 
Wire Wire Line
	3000 900  3000 1000
Wire Wire Line
	3700 1000 3700 900 
Wire Wire Line
	3700 900  3650 900 
Wire Wire Line
	1900 2000 2050 2000
Connection ~ 2050 2000
Wire Wire Line
	1900 2500 1900 2600
Wire Wire Line
	1900 2600 2150 2600
Wire Wire Line
	6450 2300 6550 2300
Wire Wire Line
	7100 4000 7100 2300
Wire Wire Line
	7100 2300 6950 2300
Wire Wire Line
	7050 2700 7100 2700
Connection ~ 7100 2700
Wire Wire Line
	7050 3100 7100 3100
Connection ~ 7100 3100
Wire Wire Line
	7050 3500 7100 3500
Connection ~ 7100 3500
Wire Wire Line
	7050 3900 7100 3900
Connection ~ 7100 3900
Wire Wire Line
	7550 4400 7550 4300
Wire Wire Line
	7550 4300 7500 4300
Wire Wire Line
	8000 4400 8000 2700
Wire Wire Line
	8000 2700 7950 2700
Wire Wire Line
	7950 3100 8000 3100
Connection ~ 8000 3100
Wire Wire Line
	7950 3500 8000 3500
Connection ~ 8000 3500
Wire Wire Line
	7950 3900 8000 3900
Connection ~ 8000 3900
Wire Wire Line
	8900 4400 8900 2700
Wire Wire Line
	8900 2700 8850 2700
Wire Wire Line
	8850 3100 8900 3100
Connection ~ 8900 3100
Wire Wire Line
	8850 3500 8900 3500
Connection ~ 8900 3500
Wire Wire Line
	8850 3900 8900 3900
Connection ~ 8900 3900
Wire Wire Line
	8850 4300 8900 4300
Connection ~ 8900 4300
Wire Wire Line
	9800 4400 9800 2700
Wire Wire Line
	9800 2700 9750 2700
Wire Wire Line
	9750 3300 9800 3300
Connection ~ 9800 3300
Wire Wire Line
	9750 4100 9800 4100
Connection ~ 9800 4100
Wire Wire Line
	4550 5400 4550 5550
Wire Wire Line
	4550 5550 4250 5550
Wire Wire Line
	4550 5650 4250 5650
Wire Wire Line
	4250 5750 4550 5750
Wire Wire Line
	4550 5750 4550 5850
Wire Wire Line
	4000 5750 3700 5750
Wire Wire Line
	3700 5650 4000 5650
Wire Wire Line
	4000 5550 3700 5550
Connection ~ 1100 1000
Wire Wire Line
	5500 6250 5500 5350
Wire Wire Line
	5500 5350 5600 5350
Wire Wire Line
	5600 5650 5500 5650
Connection ~ 5500 5650
Wire Wire Line
	5600 5950 5500 5950
Connection ~ 5500 5950
$Comp
L CONN_1 P1
U 1 1 50505DD3
P 5750 5350
F 0 "P1" H 5830 5350 40  0000 L CNN
F 1 "CONN_1" H 5750 5405 30  0001 C CNN
	1    5750 5350
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P2
U 1 1 50505DCF
P 5750 5500
F 0 "P2" H 5830 5500 40  0000 L CNN
F 1 "CONN_1" H 5750 5555 30  0001 C CNN
	1    5750 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 50505DCD
P 5500 6250
F 0 "#PWR01" H 5500 6250 30  0001 C CNN
F 1 "GND" H 5500 6180 30  0001 C CNN
	1    5500 6250
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P6
U 1 1 50505DCA
P 5750 6100
F 0 "P6" H 5830 6100 40  0000 L CNN
F 1 "CONN_1" H 5750 6155 30  0001 C CNN
	1    5750 6100
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P5
U 1 1 50505DC8
P 5750 5950
F 0 "P5" H 5830 5950 40  0000 L CNN
F 1 "CONN_1" H 5750 6005 30  0001 C CNN
	1    5750 5950
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P4
U 1 1 50505DC7
P 5750 5800
F 0 "P4" H 5830 5800 40  0000 L CNN
F 1 "CONN_1" H 5750 5855 30  0001 C CNN
	1    5750 5800
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P3
U 1 1 50505DC6
P 5750 5650
F 0 "P3" H 5830 5650 40  0000 L CNN
F 1 "CONN_1" H 5750 5705 30  0001 C CNN
	1    5750 5650
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 504F6915
P 6750 3100
F 0 "SW2" H 6900 3210 50  0000 C CNN
F 1 "7" H 6750 3020 50  0000 C CNN
	1    6750 3100
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW4
U 1 1 504F691B
P 6750 3900
F 0 "SW4" H 6900 4010 50  0000 C CNN
F 1 "1" H 6750 3820 50  0000 C CNN
	1    6750 3900
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW3
U 1 1 504F6921
P 6750 3500
F 0 "SW3" H 6900 3610 50  0000 C CNN
F 1 "4" H 6750 3420 50  0000 C CNN
	1    6750 3500
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW8
U 1 1 504F698E
P 7650 3500
F 0 "SW8" H 7800 3610 50  0000 C CNN
F 1 "5" H 7650 3420 50  0000 C CNN
	1    7650 3500
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW9
U 1 1 504F6988
P 7650 3900
F 0 "SW9" H 7800 4010 50  0000 C CNN
F 1 "2" H 7650 3820 50  0000 C CNN
	1    7650 3900
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW7
U 1 1 504F6982
P 7650 3100
F 0 "SW7" H 7800 3210 50  0000 C CNN
F 1 "8" H 7650 3020 50  0000 C CNN
	1    7650 3100
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW12
U 1 1 504F6994
P 8550 3500
F 0 "SW12" H 8700 3610 50  0000 C CNN
F 1 "6" H 8550 3420 50  0000 C CNN
	1    8550 3500
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW13
U 1 1 504F699A
P 8550 3900
F 0 "SW13" H 8700 4010 50  0000 C CNN
F 1 "3" H 8550 3820 50  0000 C CNN
	1    8550 3900
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW11
U 1 1 504F69A0
P 8550 3100
F 0 "SW11" H 8700 3210 50  0000 C CNN
F 1 "9" H 8550 3020 50  0000 C CNN
	1    8550 3100
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW5
U 1 1 504F69AC
P 7200 4300
F 0 "SW5" H 7350 4410 50  0000 C CNN
F 1 "0" H 7200 4220 50  0000 C CNN
	1    7200 4300
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW14
U 1 1 504F69B2
P 8550 4300
F 0 "SW14" H 8700 4410 50  0000 C CNN
F 1 "." H 8550 4220 50  0000 C CNN
	1    8550 4300
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW17
U 1 1 504F69C2
P 9450 4100
F 0 "SW17" H 9600 4210 50  0000 C CNN
F 1 "ENTER" H 9450 4020 50  0000 C CNN
	1    9450 4100
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW16
U 1 1 504F69C8
P 9450 3300
F 0 "SW16" H 9600 3410 50  0000 C CNN
F 1 "+" H 9450 3220 50  0000 C CNN
	1    9450 3300
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW15
U 1 1 504F69CE
P 9450 2700
F 0 "SW15" H 9600 2810 50  0000 C CNN
F 1 "-" H 9450 2620 50  0000 C CNN
	1    9450 2700
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW10
U 1 1 504F6AD5
P 8550 2700
F 0 "SW10" H 8700 2810 50  0000 C CNN
F 1 "*" H 8550 2620 50  0000 C CNN
	1    8550 2700
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW6
U 1 1 504F6AE0
P 7650 2700
F 0 "SW6" H 7800 2810 50  0000 C CNN
F 1 "/" H 7650 2620 50  0000 C CNN
	1    7650 2700
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 504F6AEB
P 6750 2700
F 0 "SW1" H 6900 2810 50  0000 C CNN
F 1 "NUMLOCK" H 6750 2620 50  0000 C CNN
	1    6750 2700
	1    0    0    -1  
$EndComp
$Comp
L AT90USB162 U1
U 1 1 504F6B06
P 3350 4550
F 0 "U1" H 2500 7100 60  0000 C CNN
F 1 "AT90USB162" H 3800 4600 60  0000 C CNN
	1    3350 4550
	1    0    0    -1  
$EndComp
Text Label 4400 2350 0    60   ~ 0
ISP_MOSI
Text Label 4400 2450 0    60   ~ 0
ISP_MISO
Text Label 4400 2250 0    60   ~ 0
ISP_SCK
$Comp
L LED D1
U 1 1 504F6B7E
P 6750 2300
F 0 "D1" H 6750 2400 50  0000 C CNN
F 1 "LED" H 6750 2200 50  0000 C CNN
	1    6750 2300
	1    0    0    -1  
$EndComp
$Comp
L AVR-ISP-6 CON1
U 1 1 504F6B93
P 4125 5650
F 0 "CON1" H 4045 5890 50  0000 C CNN
F 1 "ISP" H 3885 5420 50  0000 L BNN
F 2 "AVR-ISP-6" V 3605 5690 50  0001 C CNN
	1    4125 5650
	1    0    0    -1  
$EndComp
$Comp
L USB-MINI-B J1
U 1 1 504F6BC1
P 1200 4050
F 0 "J1" H 1200 4050 60  0000 C CNN
F 1 "USB-MINI-B" H 1050 4850 60  0000 C CNN
	1    1200 4050
	1    0    0    -1  
$EndComp
Text Label 4400 3250 0    60   ~ 0
NUMLOCK_LED
$Comp
L R R1
U 1 1 504F6D83
P 1800 3550
F 0 "R1" V 1850 3750 50  0000 C CNN
F 1 "22" V 1800 3550 50  0000 C CNN
	1    1800 3550
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 504F6D9F
P 1800 3650
F 0 "R2" V 1750 3850 50  0000 C CNN
F 1 "22" V 1800 3650 50  0000 C CNN
	1    1800 3650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR02
U 1 1 504F6DCD
P 1550 4550
F 0 "#PWR02" H 1550 4550 30  0001 C CNN
F 1 "GND" H 1550 4480 30  0001 C CNN
	1    1550 4550
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 504F6DE6
P 1850 4150
F 0 "C4" H 1900 4250 50  0000 L CNN
F 1 "1u" H 1900 4050 50  0000 L CNN
	1    1850 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 504F6E05
P 1850 4550
F 0 "#PWR03" H 1850 4550 30  0001 C CNN
F 1 "GND" H 1850 4480 30  0001 C CNN
	1    1850 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 504F6E0B
P 2100 4550
F 0 "#PWR04" H 2100 4550 30  0001 C CNN
F 1 "GND" H 2100 4480 30  0001 C CNN
	1    2100 4550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 504F6ECF
P 1700 3350
F 0 "#PWR05" H 1700 3440 20  0001 C CNN
F 1 "+5V" H 1700 3440 30  0000 C CNN
	1    1700 3350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 504F704A
P 2050 1850
F 0 "#PWR06" H 2050 1940 20  0001 C CNN
F 1 "+5V" H 2050 1940 30  0000 C CNN
	1    2050 1850
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 504F707A
P 800 1350
F 0 "C1" H 850 1450 50  0000 L CNN
F 1 "100n" H 850 1250 50  0000 L CNN
	1    800  1350
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 504F7087
P 1100 1350
F 0 "C2" H 1150 1450 50  0000 L CNN
F 1 "100n" H 1150 1250 50  0000 L CNN
	1    1100 1350
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 504F7097
P 1400 1350
F 0 "C3" H 1450 1450 50  0000 L CNN
F 1 "4u7" H 1450 1250 50  0000 L CNN
	1    1400 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 504F70A4
P 1100 1750
F 0 "#PWR07" H 1100 1750 30  0001 C CNN
F 1 "GND" H 1100 1680 30  0001 C CNN
	1    1100 1750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 504F70FF
P 1100 1000
F 0 "#PWR08" H 1100 1090 20  0001 C CNN
F 1 "+5V" H 1100 1090 30  0000 C CNN
	1    1100 1000
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 504F7160
P 3350 900
F 0 "X1" H 3350 1050 60  0000 C CNN
F 1 "CRYSTAL" H 3350 750 60  0000 C CNN
	1    3350 900 
	1    0    0    -1  
$EndComp
Text Label 2150 2950 2    60   ~ 0
XTAL1
Text Label 2150 3050 2    60   ~ 0
XTAL2
$Comp
L C C5
U 1 1 504F716F
P 3000 1200
F 0 "C5" H 3050 1300 50  0000 L CNN
F 1 "22p" H 3050 1100 50  0000 L CNN
	1    3000 1200
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 504F718B
P 3700 1200
F 0 "C6" H 3750 1300 50  0000 L CNN
F 1 "22p" H 3750 1100 50  0000 L CNN
	1    3700 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 504F719D
P 3700 1550
F 0 "#PWR09" H 3700 1550 30  0001 C CNN
F 1 "GND" H 3700 1480 30  0001 C CNN
	1    3700 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 504F71EA
P 3000 1550
F 0 "#PWR010" H 3000 1550 30  0001 C CNN
F 1 "GND" H 3000 1480 30  0001 C CNN
	1    3000 1550
	1    0    0    -1  
$EndComp
Text Label 3000 900  2    60   ~ 0
XTAL1
Text Label 3700 900  0    60   ~ 0
XTAL2
Text Label 1900 2600 2    60   ~ 0
ISP_RESET
$Comp
L R R3
U 1 1 504F7282
P 1900 2250
F 0 "R3" V 1980 2250 50  0000 C CNN
F 1 "10k" V 1900 2250 50  0000 C CNN
	1    1900 2250
	-1   0    0    1   
$EndComp
$Comp
L R R4
U 1 1 504F7440
P 6200 2300
F 0 "R4" V 6280 2300 50  0000 C CNN
F 1 "1k" V 6200 2300 50  0000 C CNN
	1    6200 2300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR011
U 1 1 504F7479
P 7100 4000
F 0 "#PWR011" H 7100 4000 30  0001 C CNN
F 1 "GND" H 7100 3930 30  0001 C CNN
	1    7100 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 504F761B
P 7550 4400
F 0 "#PWR012" H 7550 4400 30  0001 C CNN
F 1 "GND" H 7550 4330 30  0001 C CNN
	1    7550 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 504F765F
P 8000 4400
F 0 "#PWR013" H 8000 4400 30  0001 C CNN
F 1 "GND" H 8000 4330 30  0001 C CNN
	1    8000 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 504F77AB
P 8900 4400
F 0 "#PWR014" H 8900 4400 30  0001 C CNN
F 1 "GND" H 8900 4330 30  0001 C CNN
	1    8900 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 504F7900
P 9800 4400
F 0 "#PWR015" H 9800 4400 30  0001 C CNN
F 1 "GND" H 9800 4330 30  0001 C CNN
	1    9800 4400
	1    0    0    -1  
$EndComp
Text Label 4550 5650 0    60   ~ 0
ISP_MOSI
Text Label 3700 5550 2    60   ~ 0
ISP_MISO
Text Label 3700 5650 2    60   ~ 0
ISP_SCK
Text Label 3700 5750 2    60   ~ 0
ISP_RESET
$Comp
L GND #PWR016
U 1 1 504F7B05
P 4550 5850
F 0 "#PWR016" H 4550 5850 30  0001 C CNN
F 1 "GND" H 4550 5780 30  0001 C CNN
	1    4550 5850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR017
U 1 1 504F7B0B
P 4550 5400
F 0 "#PWR017" H 4550 5490 20  0001 C CNN
F 1 "+5V" H 4550 5490 30  0000 C CNN
	1    4550 5400
	1    0    0    -1  
$EndComp
Text Label 7350 2700 2    60   ~ 0
SW_/
Text Label 4400 3150 0    60   ~ 0
SW_/
Text Label 6450 2700 2    60   ~ 0
SW_NUMLOCK
Text Label 6450 3100 2    60   ~ 0
SW_7
Text Label 6450 3500 2    60   ~ 0
SW_4
Text Label 6450 3900 2    60   ~ 0
SW1
Text Label 7350 3100 2    60   ~ 0
SW8
Text Label 7350 3500 2    60   ~ 0
SW5
Text Label 7350 3900 2    60   ~ 0
SW2
Text Label 8250 2700 2    60   ~ 0
SW_*
Text Label 8250 3100 2    60   ~ 0
SW_9
Text Label 8250 3500 2    60   ~ 0
SW_6
Text Label 8250 3900 2    60   ~ 0
SW_3
Text Label 8250 4300 2    60   ~ 0
SW_.
Text Label 9150 2700 2    60   ~ 0
SW_-
Text Label 9150 3300 2    60   ~ 0
SW_+
Text Label 9150 4100 2    60   ~ 0
SW_ENT
Text Label 6900 4300 2    60   ~ 0
SW_0
Text Label 4400 3350 0    60   ~ 0
SW_NUMLOCK
Text Label 4400 3450 0    60   ~ 0
SW1
Text Label 4400 2850 0    60   ~ 0
SW_4
Text Label 4400 2750 0    60   ~ 0
SW_7
Text Label 4400 2650 0    60   ~ 0
SW5
Text Label 4400 2550 0    60   ~ 0
SW8
Text Label 4400 2150 0    60   ~ 0
SW_0
Text Label 4400 4350 0    60   ~ 0
SW2
Text Label 4400 4250 0    60   ~ 0
SW_.
Text Label 4400 4150 0    60   ~ 0
SW_ENT
Text Label 4400 4050 0    60   ~ 0
SW_3
Text Label 4400 3950 0    60   ~ 0
SW_9
Text Label 4400 3850 0    60   ~ 0
SW_6
Text Label 4400 3750 0    60   ~ 0
SW_+
Text Label 4400 3650 0    60   ~ 0
SW_-
Text Label 4400 3050 0    60   ~ 0
SW_*
Text Label 5950 2300 2    60   ~ 0
NUMLOCK_LED
Text Notes 5350 5200 0    60   ~ 0
Mounting holes
Text Notes 3450 5350 0    60   ~ 0
programming header
Text Notes 7350 2350 0    60   ~ 0
keypad
Text Notes 700  800  0    60   ~ 0
bypass caps for microcontroller
$EndSCHEMATC
