//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX9_4.sce

clc;
clear;
A=1000;//open loop gain
beta=-0.02;//negative feedback factor 
Zi=1.5e3;//input impedence in ohm
Zif=Zi*(1-(beta*A));
printf("\n Input impedence with feedback=%0.1f kohm",Zif*1e-3)
