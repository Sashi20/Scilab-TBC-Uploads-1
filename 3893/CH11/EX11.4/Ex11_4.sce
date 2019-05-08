//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX11_4.sce

clc;
clear;
Ic=6;//load current in A
m=0.6;//modulation is 60 percentage
It=(Ic)*(1+(m^2)/2);

printf("\n Current when 60 percentage modulation=%1.2f A",It)
