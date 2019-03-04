//Fibre Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 5.3.6
clc;
clear all;
//given

Dpmd=0.5;//polarization mode dispersion coefficient in ps/sqrt(km)

L=100;//for assumed fibre length in km
deltatpmd=Dpmd*sqrt(L);
mprintf("Pulse spread caused by PMD for single  mode fiber= %.2f ps",deltatpmd);

a=4*deltatpmd;
BRpmd=1000/a;
mprintf("\nBit Rate of %.2f Gbps is limited by PMD.",BRpmd);
