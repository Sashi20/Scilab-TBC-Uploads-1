//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX8_2.sce

clc;
clear;
A=80;//voltage gain
Am=20*log10(A);//midfrequency gain
Af=3;//gain falls at cutoff frequencies in dB
Ac=Am-Af;
printf("\n Gain at cutoff frequencies =%0.2f dB",Ac)
