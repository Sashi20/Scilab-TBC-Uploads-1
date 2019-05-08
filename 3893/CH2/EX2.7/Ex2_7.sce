//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX2_7.sce

clc;
clear;
Rc=2e3;//collector resiatance in ohm
Re=3e3;//emitter resistance in ohm
R1=14e3;
R2=6e3;
Vcc=10;//dc supply voltage in V
Vbe=0.3;//Base emitter voltage for Germanium

//To get the end point B of the load line ,Ic is 0
Ic=0;
Vce=Vcc-(Ic*(Rc+Re));

//To get the end point A of the load line, Vce is 0
Ic=Vcc/(Rc+Re);

V2=Vcc*(R2/(R1+R2));
Ic=(V2-Vbe)/Re;
Vce=Vcc-(Ic*(Rc+Re));
printf("\n The  operating point is (%0.1f V;%0.1f mA)",Vce,Ic*1e3)
