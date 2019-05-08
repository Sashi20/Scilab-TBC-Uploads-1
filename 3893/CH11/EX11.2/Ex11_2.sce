//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX11_2.sce

clc;
clear;
Ec=80;//peak voltage of carrier in V
R=80;//Load resistance in ohm
m=0.5;//modulation index

Pc=((Ec/sqrt(2))^2)/R;
Pt=Pc*(1+(m^2)/2);
printf("\n Total power=%1.0f W \n",Pt)
