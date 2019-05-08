//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX6_2.sce

clc;
clear;
Vmax=15;//maximum value of collector_emitter voltage in V
Vmin=3;//minimum value of collector_emitter voltage in V
Imax=250e-3;//maximum collector current in A
Imin=20e-3;//Minimum collector current in A
Icq=135e-3;//Quiescent collector current in A
Vcc=12;//DC Power supply in V

Po=(1/8)*(Vmax-Vmin)*(Imax-Imin)
Pi=Vcc*Icq;
eta=(Po/Pi)*100;
printf("\n Efficiency of the amplifier = %0.1f percentage",eta)
