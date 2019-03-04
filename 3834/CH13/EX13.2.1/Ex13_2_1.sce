//Fibre Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 13.2.1
clc;
clear all;
//given

//case 1
lambda1=1540.56E-9;//wavelength in m
lambda2=1541.35E-9;//wavelength in m
d=5E-6;//grating pitch in m

x=lambda1/d;
theta1=asind(x);
y=lambda2/d;
theta2=asind(y);

Asep=theta2-theta1;
mprintf("Angle of separation = %.2f deg.",Asep);

//case 2

z=tand(theta2)-tand(theta1);
L=245E-6/z;

mprintf("\nLength required to separate wavelength = %.2f m",L);
