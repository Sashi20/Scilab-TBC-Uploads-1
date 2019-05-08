//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX9_6.sce

clc;
clear;
A=15;//gain of amplifier
D=12;//Distortion without feedback
beta=-0.15;//negative feedback factor
Af=A/(1-(beta*A));
Df=D/(1-(beta*A));
printf("\n Overall gain with feedback =%0.2f \n Distortion with feedback =%0.2f percentage",Af,Df)

