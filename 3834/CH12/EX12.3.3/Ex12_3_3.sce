//Fibre Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 12.3.3
clc;
clear all;
//given

x=0.96;//assumed R*Gs value
L=500E-3;//assumed length of a typical travelling-wave semiconductor amplifier in cm
v=3.6;//refractive index of SOA medium

y=asin((1-x)/(2*sqrt(x)));
BWfpa=((v/L)*y);
mprintf("Bandwidth of Fabry-perot semiconductor amplifier = %.2f rad/s.",BWfpa);
