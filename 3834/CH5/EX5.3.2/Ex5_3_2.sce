//Fibre Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 5.3.2
clc;
clear all;
//given
lambda=1550;//operating wavelength in nm
deltalambda=1;//wavelength in nm
L=1;//length of fiber in km
Dmatlambda=20;//material dispersion in ps/nm.km
Dwglambda=5;//waveguide dispersion in ps/nm.km

deltatmat=Dmatlambda*deltalambda*L;
deltatwg=Dwglambda*deltalambda*L;

mprintf("pulse spread caused by material dispersion=%.2f ps",deltatmat);
mprintf("\npulse spread caused by waveguide dispersion=%.2f ps",deltatwg);
