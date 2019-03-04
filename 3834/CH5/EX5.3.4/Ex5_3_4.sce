//Fibre Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 5.3.4
clc;
clear all;
//given

Dpmd=0.5;//polarization mode dispersion coefficient in ps/sqrt(km)
L=100;//fibre length in km
deltatpmd=Dpmd*sqrt(L);

mprintf("Pulse spread caused by PMD for single  mode fiber= %.2f ps",deltatpmd);
