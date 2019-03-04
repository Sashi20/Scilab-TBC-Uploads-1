//Fibre Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 12.3.2
clc;
clear all;
//given

g=106;//maximum gain coefficient in 1/cm
alpha=14;//loss coefficient of a cavity in 1/cm
tau=0.8;//confinement factor
L=500E-3;//assumed length of a typical travelling-wave semiconductor amplifier in cm

y=tau*g-alpha;
z=y*L;
Gs=exp(z);
mprintf("Gain of a travelling-wave semiconductor amplifier = %.2f.",Gs);
