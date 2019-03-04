//Fibre Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 12.3.5
clc;
clear all;
//given

lambda=1300E-9;//operating wavelength in m
c=3E8;//speed of light in m
f=c/lambda;
hf=1.53E-19;//photon energy
nsp=3;
G=1000;//by converting gain into absolut no.
deltalambda=40E-9;//bandwidth of TWA in m
//BW=((f*deltalambda)/(lambda^2));
BW=1.775E12;
Pase = 2*nsp*hf*G*BW;

mprintf("ASE power generated= %.2f mW",Pase*1000);
