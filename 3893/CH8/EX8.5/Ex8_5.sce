//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX8_5.sce

clc;
clear;
//from the given circuit 8.15 the following values are taken
Rc1=18e3;
Re1=600;
Rc2=15e3;
Re2=1.3e3;
//resiatance in ohm
Vin=1.3;//input voltage in V
Vbe=0.7;
Vcc=20;

Ve1=Vin-Vbe;//volatage of emitter terminal of transistor1
Ie1=Ve1/Re1;
Ic1=Ie1;
Vc1=Vcc-(Ic1*Rc1);

Vb2=Vc1;//the base volatge of second stage = collector voltage of first stage
Ve2=Vb2-Vbe;
Ie2=Ve2/Re2;
Ic2=Ie2;
Vc2=Vcc-(Ic2*Rc2);

printf("\n Output voltage = %dV",Vc2)

