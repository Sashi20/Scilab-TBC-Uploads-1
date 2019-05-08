//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX9_5.sce

clc;
clear;
Zo=10e3;//output impedence without feedback in ohm
Zof=500;//output impedence with feedback in ohm
A=1000;//open loop gain is 60 dB
//60 dB=10^(60/20)=1000
beta=(Zof-Zo)/(Zof*A); //obtained from the equation Zof=(Zo/(1-(B*A))
printf("\n Feedback factor=%0.2f",beta)

//Answer vary dueto roundoff error
