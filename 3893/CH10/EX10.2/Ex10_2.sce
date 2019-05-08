//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX10_2.sce

clc;
clear;
L1=0.3e-3;//value of inductor1 in H
L2=0.2e-3;//value of inductor2 in H
C=0.003e-6;//capacitor value in F
f=1/(2*%pi*sqrt((L1+L2)*C));//equation of frequency for Hartley oscillator
printf("\n Frequency of Hartley oscillator =%0.2f kHz \n",f*1e-3)

//Note:There is a error in the book for calculating frequency
      // Answer given in the book was wrong
