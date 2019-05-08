//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX8_1.sce

clc;
clear;
Gv1=20;
Gv2=40;
Gv3=60;
//Gv1,Gv2,Gv3 are tha voltage gains of multistage amplifiers
G=Gv1*Gv2*Gv3;
dB=20*log10(G);
printf("\n Overall gain =%0.2f dB",dB)
