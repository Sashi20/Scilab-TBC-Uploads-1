//Fibre Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 5.3.5
clc;
clear all;
//given

L=100;//given assumed fiber optic length in km
deltalambda=1;//spectral width wavelength in nm
Dlambda=2;//given chromatic dispersion parameter in ps/nm.km 

e=4*Dlambda*deltalambda*L;
BRchrom = 1000/e;
mprintf("Maximum bit rate limited by chromatic dispersion= %.2f Gbps",BRchrom);
