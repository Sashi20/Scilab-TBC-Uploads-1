//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX11_8.sce

clc;
clear;
Pt=1200;//total power content of AM in W
m=1;//100 percentage modulation index
Pc=(Pt*2)/(2+m^2);
Pusb=(m^2/4)*Pc;
Plsb=Pusb;
printf("\n Power contained in the carrier=%d W \n",Pc)
printf("\n Upper side band =%d W \n Lower side band =%d W \n",Pusb,Plsb)
