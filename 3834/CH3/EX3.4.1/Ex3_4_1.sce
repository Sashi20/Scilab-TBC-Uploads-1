//Fibre Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 7
//Scilab version- 6.0.0
//Example 3.4.1
clc;
clear all;
//given

NA=0.275;//numerical aperture
N1=1.487;//refractive in dex
c=3E8;//speed of light in m/s
L=1E3;//length of the link
a=N1*N1*N1;
b=8*c*a;
d=NA*NA*NA*NA;
g=L*d;
BRg1=(b/g);
mprintf("the bits restricted by modal dispersion is=%.2f bit/s",BRg1);
