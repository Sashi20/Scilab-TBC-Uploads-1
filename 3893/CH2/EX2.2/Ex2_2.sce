//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX2_2.sce

clc;
clear;
Vcc=9;//dc supply voltage in V
Rc=3e3;//Collector resistance in ohm
beta=100;
Vbe=0.7;//voltage across base emitter terminal in V

Ic_top=Vcc/Rc;
Ic_mid=Ic_top/2;
Ib=Ic_mid/beta;
Rb=(Vcc-Vbe)/Ib;
printf("\n Base resistance Rb=%0.1f kohm \n",Rb*1e-3)

