//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX13_1.sce

clc;
clear;
Imax=10e-3;//Maximum reading current of ammeter in A
CS=100e-6;//Current sensitivity in A
Rm=50;//Resistance in ohm

Ishunt=Imax-CS;
Rshunt=(Rm*CS)/Ishunt;
printf("\n Required shunt resistance=%1.3f ohm \n", Rshunt)
