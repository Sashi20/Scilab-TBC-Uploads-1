//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX2_5.sce

clc;
clear;
Vcc=12;//dc supply voltage in V
Ic=6e-3;//collector current in A
Vce=6;//collector emitter voltage in V
beta=100;
Vbe=0.3;//voltage across base emitter terminal in V 

Rc=(Vcc-Vce)/Ic;
Ib=Ic/beta;
//Vcc=(Rc*Ic)+((Rb+Rc)*Ib)+Vbe;
Rb=(Vcc-Vbe-(Ic*Rc)-(Ib*Rc))/(Ib);
printf("\n Base resistor Rb= %1.0f kohm \n",Rb*1e-3)
