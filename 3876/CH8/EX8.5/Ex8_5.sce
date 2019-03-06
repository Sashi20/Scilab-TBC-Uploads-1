//Windows 10
// Scilab 6.0.0

//Chapter 8 Chemical Equlibrium

clc;
clear;

//Initialisation of Variables
T= 65 //temperature in Celsius
R= 1.98 //cal/mol K
kp= 2.8  //at 65 degrees clesius
kp1= 0.141  //at 25 degrees clesius
T1= 25 //temperature in Celsius

//CALCULATIONS
H= log10(kp/kp1)*2.303*R*(273+T1)*(273+T)/(T-T1)
H= H+62 

//RESULTS
mprintf("Average Heat of reaction= %d cal",H)
