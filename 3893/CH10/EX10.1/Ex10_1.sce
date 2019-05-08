//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX10_1.sce

clc;
clear;
L=60e-6;//inductor value in H
C=300e-12;//capacitor value in F
f=1/(2*%pi*sqrt(L*C));
printf("\n Frequency of the oscillator =%d kHz \n",f*1e-3)
