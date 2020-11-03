//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 150;       //(N)(Weight of signal arm)
d1 = 175;      //(mm)(Distance between F1 and 150N)
d2 = 75;       //(mm)(Distance between F1 and B)

//First of all, taking moment about the fulcrum(F1) of the signal and equating the same;
//P * 75 = 150 * 175;
P = (W * d1)/d2;           //(N)

//Now, taking moment about the fulcrum(F2) of the operating wire and equating the same;
//T * 75 = 350 * 150;
T = (P * W)/d2;          //(N)
printf("Required tension = %.2f N",T);
