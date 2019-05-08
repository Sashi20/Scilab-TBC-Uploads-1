//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX2_6.sce

clc;
clear;
Vcc=20;//dc supply voltage in V
Rb=100e3;//base resistance in ohm
beta=100;
Rc=1e3;//collector resistor in ohm
Vbe=0.7;//voltage across base emitter terminal in V for silicon transistor

Ib=(Vcc-Vbe)/(Rb+(1+beta)*Rc);
Ic=beta*Ib;
Vce=Vcc-(Ic*Rc);
printf("\n The operating point is (%0.1f mA;%1.1f V) \n",Ic*1e3,Vce)
