//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX6_7.sce

clc;
clear;
Tj=90;//maximum junction temperature in degree celcius
Ta=30;//ambient temperature in degree celcius
thetaJA=15;//thermal resistance between junction and ambient in degree celcius per watt
//thetaJA=thetaSC+thetaCS+thetaSA;

Pc=(Tj-Ta)/thetaJA;
printf("\n Maximum permissible rate of power dissipation of the combination= %d W",Pc)


