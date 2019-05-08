//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX6_1.sce

clc;
clear;
Rldash=100e3;//load impedence in ohm
Rl=25;//reflected load impedence in ohm
//Rl_dash=(N1/N2)^2*Rl;
//a=(N1/N2)^2
a=Rldash/Rl;
b=sqrt(a);
printf("\n Turns ratio of the transformer = %d:1 \n",b)

//there is a error in the book
//both resistance values substituted incorrectly, turns ratio is lessthan one if book value is substituted
//above resistance value gives the turns ratio correctly
