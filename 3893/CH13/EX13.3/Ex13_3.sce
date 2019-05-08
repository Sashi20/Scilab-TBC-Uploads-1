//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX13_3.sce

clc;
clear;

deflectionsensitivity=4;//unit is V/cm
lengthoftrace=12;//unit is cm

Vpp=deflectionsensitivity*lengthoftrace;//peak to peak value of applied voltage in V
Vp=Vpp/2;//peak value of applied voltage in V
Vrms=Vp/sqrt(2);
printf("\n RMS value of applied voltage=%2.2f V",Vrms)
