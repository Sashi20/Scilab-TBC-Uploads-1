//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX11_11.sce

clc;
clear;
fc=105e6;//centre frequency of an FM carrier in Hz
fmhigh=105.04e6;//highest frequency of the modulating signal in Hz
fs=8e3;//siganl frequency in Hz
Fd=fmhigh-fc;
m=Fd/fs;
printf("\n Modulation index =%d",m)
