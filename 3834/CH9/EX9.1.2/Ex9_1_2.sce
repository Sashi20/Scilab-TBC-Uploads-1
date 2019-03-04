//Fibre Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 9.1.2
clc;
clear all;
//given
Pout=100E-6;//radiated power in W

n1=1.48;//refractive index of the core
n2=1.46;//refractive index of the cladding

b=n1*n1;
c=n2*n2;
v=b-c;
NA=sqrt(v);//numerical aperture
mprintf("\n numerical aperture=%.2f",NA);

Pin=Pout*NA*NA*1000000;
mprintf("\nLight power Pin=%.2f W",Pin);

