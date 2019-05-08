//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX12_1.sce

clc;
clear;
Nl=525;//number of lines per frame
R=4/3;//aspect raion
Ns=33;//number of suppressed lines
Na=Nl-Ns;
Nh=R*Na;
printf("\n Number of active lines= %1.0f \n Number of pixels per line= %1.0f \n",Na,Nh)

