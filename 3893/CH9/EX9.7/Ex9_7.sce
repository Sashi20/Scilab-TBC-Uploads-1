//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX9_7.sce

clc;
clear;
A=25;// open loop gain
beta=-0.1;//negative feedback factor
Af=A/(1-(beta*A));//overall gain
A0=A*(5/100);//increased open loop gain by 5%
A1=A+A0;//new open loop gain value after the increase
Afnew=A1/(1-(beta*A1));//new overall gain value
Afper=((Afnew-Af)/(Af))*100;
printf("\n Percentage gain in overall gain=%0.1f percentage",Afper)
