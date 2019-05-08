//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX1_2.sce

clc;
clear;
Rc=5e3;//collector load resistance in ohm
Vcc=10;//dc supply voltage in V
Ib=20e-6;//base current in A
beta=50;

Ic=beta*Ib;//collector current in A
Vce=Vcc-(Ic*Rc);
printf("\n The operating point is (%1.0f V;%1.0f mA)",Vce,Ic*1e3)


