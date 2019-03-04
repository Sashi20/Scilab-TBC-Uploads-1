//Fibre Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 5.3.3
clc;
clear all;
//given

lambda=1550;//operating wavelength in nm
L=1;//Length of fiber in km
deltalambda=1;//spectral width wavelength in nm
Dlambda=15;//given chromatic dispersion parameter in ps/nm.km 

deltatchrom=Dlambda*deltalambda;
mprintf("\nchromatic dispersion in single mode fibre = %.2f ps",deltatchrom);
