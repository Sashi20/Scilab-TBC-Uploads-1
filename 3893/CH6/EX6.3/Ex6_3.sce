//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX6_3.sce

clc;
clear;
//from the given output equation of the amplifier
A0=16;
A1=1.6;
A2=1.3;
A3=0.4;

D2=A1/A0;
D3=A2/A0;
D4=A3/A0;
D=sqrt(D2^2+D3^2+D4^2); 
//power with distrotion=(1+D^2)*P1 .
//P1 is the power due to distortion
Pincrease=D^2*100;
printf("\n Percentage increase in power due to distortion =%0.3f percentage",Pincrease)
