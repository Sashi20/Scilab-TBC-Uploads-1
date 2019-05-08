//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX6_4.sce

clc;
clear;
Rl=100;//load of power amplifier in ohm
a=12;//let a=(N1/N2)
Ic=100e-3;//collector current in A

Rldash=(a^2)*Rl;//reflected impedence in ohm
Po=(1/2)*Ic^2*Rldash;

printf("\n Maximum ac power output =%d W",Po)


