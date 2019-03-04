//Fibre Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 5.3.1
clc;
clear all;
//given
lambda=1310;//operating wavelength in nm
deltalambda=1;//wavelength in nm
L=1;//length of fiber in km

Dmatlambda=2;//material dispersion in ps/nm.km from graph
deltatmat=Dmatlambda*deltalambda*L;

mprintf("pulse spread caused by material dispersion=%.2f ps",deltatmat);
