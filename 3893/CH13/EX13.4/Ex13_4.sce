//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX13_4.sce

clc;
clear;
Tc=0.2;//Time control of CRO in ms per cm
D=7.5;//Distance in cm

T=(Tc*D);//period of ac voltage in s
f=1/T;
printf("\n Frequency of ac voltage=%3.1f Hz",f*1e3)
