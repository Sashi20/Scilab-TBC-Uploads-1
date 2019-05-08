//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX1_3.sce

clc;
clear;
Vcc=5;//dc supply voltage in V
Rc=2e3;//collector load resistance in ohm
Vce=1;//knee voltage in V

Ic=(Vcc-Vce)/Rc;
printf("\n The maximum collector current= %1.0f mA",Ic*1e3)

