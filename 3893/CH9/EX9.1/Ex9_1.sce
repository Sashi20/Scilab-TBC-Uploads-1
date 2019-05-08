//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX9_1.sce

clc;
clear;
A=90;//open loop gain
beta=-0.6;//negative feedback factor 
Af=A/(1-(beta*A));
printf("\n Overall gain =%0.2f \n",Af)
