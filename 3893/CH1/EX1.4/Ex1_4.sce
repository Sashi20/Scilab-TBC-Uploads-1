//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX1_4.sce

clc;
clear;
Rc=4e3;//collector load resistance in ohm
Vcc=15;//dc supply voltage in V
Vce=1;//knee voltage in V
beta=100;

Ie=(Vcc-Vce)/(beta*Rc);
printf("\n Permissible input current= %1.0f microampere",Ie*1e6)

//There is a mistake in the book final answer
//the book answer is 30 microampere insteadof 35 microampere
