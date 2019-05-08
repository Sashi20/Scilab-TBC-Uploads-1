//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX8_4.sce

clc;
clear;
Zp=1.5e3;//output impedence of the transistor in ohm
Zs=15;//impedence of the speaker in ohm
a=(Zp/Zs);
//a=(Np/Ns)^2
//Np=primary number of turns
//Ns=secondary number of turns
t=sqrt(a);
printf("\n Turns ratio= %d:1",t)

