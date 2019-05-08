//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX3_1.sce

clc;
clear;
//collector current in A
Ic1=2e-3;
Ic2=2.5e-3;
Ic3=6e-3;
Ic4=9.5e-3;
//collector-emitter voltage in V
Vce1=4;
Vce2=6;
Vce3=6;
Vce4=20;
//base current in A
Ib1=20e-6;
Ib2=20e-6;
Ib3=40e-6;
Ib4=40e-6;
//voltage across base and emitter in V
Vbe1=0.65;
Vbe2=0.65;
Vbe3=0.7;
Vbe4=0.705;

delIc=Ic2-Ic1;
delVce=Vce2-Vce1;
hoe=delIc/delVce;//at constant Ib


delVbe=Vbe4-Vbe3;
delVce=Vce4-Vce3;
hre=delVbe/delVce;//at constant Ib

delIc=Ic3-Ic2;
delIb=Ib3-Ib2;
hfe=delIc/delIb;//at constant Vce

delVbe=Vbe3-Vbe2;
delIb=Ib3-Ib2;
hie=delVbe/delIb;//at constant Vce
printf("\n hoe= %1.0f micro-mho \n hre= %f \n hfe= %1.0f \n hie= %0.1f kohm \n",hoe*1e6,hre,hfe,hie*1e-3)
