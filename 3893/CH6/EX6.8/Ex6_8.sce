//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX6_8.sce

clc;
clear;
Pl=4;//load power in W
Rl=8;//load resistance in ohm
Vcc=16;//dc supply in V

//Pl=(Vmax/sqrt(2))^2/Rl;
Vmax=sqrt(2*Pl*Rl);
a=Vcc/Vmax;
printf("\n Turns ratio of the transformer= %d:1 \n",a)

Pdc=2*Pl;
Ic=(Pdc/Vcc);
printf("\n Collector current= %d mA \n",Ic*1e3)

Pc=Pdc-Pl;
printf("\n Collector dissipation= %d W \n", Pc)
