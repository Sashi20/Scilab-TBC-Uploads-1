//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX11_3.sce

clc;
clear;
Pc=400;//carrier power in W
m=1;//modulation index

printf("\n(1)")
Pt=Pc*(1+(m^2)/2);
printf("\n Total power=%1.0f W",Pt)

printf("\n (2)")
Ps=(Pt*m^2)/(2+m^2);
printf("\n Power in side bands=%1.0f W",Ps)
