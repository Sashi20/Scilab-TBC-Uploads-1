//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX2_4.sce

clc;
clear;
Vcc=12;//dc supply voltage in V
Re=1e3;//emitter resistance in ohm
Rb=1.1e6;//base resistance in ohm
beta=99;
Vbe=1;//voltage across base emitter terminal in V 

Ib=(Vcc-Vbe)/(Rb+(beta+1)*Re);
Ic=beta*Ib;
Ie=Ic+Ib;
printf("\n Base current Ib= %1.2f micro ampere \n Collector current Ic= %0.2f mA \n Emitter current Ie= %1.0f mA \n",Ib*1e6,Ic*1e3,Ie*1e3)

//The answer for Ib given in the book has error; Ib=9.166 micro ampere 
//Hence the answer is different from book answer
