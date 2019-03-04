//Fibre Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 13.3.1
clc;
clear all;
//given

//case 1
deltan=0.07;//Difference between refractive indexes of TE and TM modes
v=3.75E3;//velocity of sound in LiNb)3 in m/s
lambda=1540.56E-9;//optical wavelength in m
L=22E-3;//length of acousto-optic interaction

LAMDA=lambda/deltan;//wavelength for period of grating
Fsaw=v/LAMDA;
mprintf("Frequency of surface acoustic wave = %.2f Hz",Fsaw);

//case 2
Ttun=(L/v)*1E6;
mprintf("\nTuning time acousto-optic interaction = %.2f micro-s",Ttun);
