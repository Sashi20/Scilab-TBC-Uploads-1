//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX8_3.sce

clc;
clear;
hfe=100;
hie=1.2e3;
//Z1,Z2,Z3,Z4,Z5,Z6,Z7,Z8 are the resistance values(Ohm) of the figure(8.13) given
Z1=60e3;
Z2=6e3;
Zi1=(Z1*Z2)/(Z1+Z2);
Zi=(Zi1*hie)/(Zi1+hie);
printf("\n Input impedence =%0.3f kOhm \n",Zi*1e-3)

Z3=3e3;
Z4=3.3e3;
Zo=(Z4*Z3)/(Z4+Z3);
printf("\n Output impedence =%0.2f kOhm \n",Zo*1e-3)

Av2=-(hfe*Zo)/hie;//voltage gain of second stage

Z6=7e3;
Z7=60e3;
Z8=6e3;
Zf=(Z6*Z7)/(Z6+Z7);
Zs=(Z8*hie)/(Z8+hie);
Zo1=(Zf*Zs)/(Zf+Zs);

Av1=-(hfe*Zo1)/hie;//voltage gain of first stage

A=Av1*Av2;
printf("\n Overall gain= %0.1f \n",A)


//Answer vary dueto roundoff error
