//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX11_10.sce

clc;
clear;
CS=80e3;//carrier swing of an FM wave in Hz
f=8e3;//siganl frequency in Hz
Fd=CS/2;//frequency deviation in Hz
m=Fd/f;
printf("\n Modulation index =%d",m)
