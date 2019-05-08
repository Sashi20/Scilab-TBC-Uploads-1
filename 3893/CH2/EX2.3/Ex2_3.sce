//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX2_3.sce

clc;
clear;
Vcc=9;//dc supply voltage in V
Ib=20e-6;//Base current in A
Rb=400e3;//base resistance in ohm
beta=50;
Vbe=0.7;//voltage across base emitter terminal in V for silicon transistor

Re=((Vcc-Vbe)/(Ib*beta))-(Rb/beta);
printf("\n Emitter resistance= %1.0f ohm \n",Re)

