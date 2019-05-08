//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX10_3.sce

clc;
clear;
C1=0.16e-6;//value of capacitor1 in F
C2=0.018e-6;//value of capacitor2 in F
L=15.8e-3;//value of inductor in H
f=(1/(2*%pi))*sqrt((C1+C2)/(L*C1*C2));//Equation of frequency for Colpitts oscillator
printf("\n Frequency of Colpitts oscillator =%0.3f kHz \n",f*1e-3)


