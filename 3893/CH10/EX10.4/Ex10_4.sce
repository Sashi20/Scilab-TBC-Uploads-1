//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX10_4.sce

clc;
clear;
R=680e3;//given R1=R2=R3=680 kHz
C=100e-12;//given C1=C2=C3=100 pF
f=1/(2*%pi*R*C*sqrt(6));//equation of frequency for phase-shift oscillator
printf("\n Frequency of the phase shift oscillator =%1.0f Hz \n",f)
