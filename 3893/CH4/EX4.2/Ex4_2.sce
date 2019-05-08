//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX4_2.sce

clc;
clear;
Rin=1e3;//input resistance in ohm
Rc=2e3;//collector resistance in ohm
Rl=1e3;//load resistance in ohm
beta=75;

Rac=(Rc*Rl)/(Rc+Rl);
//Av=(Ic*Rac)/(Ib*Rin);
//beta=Ic/Ib;
Av=(beta*Rac)/Rin;
printf("\n Voltage gain= %d \n",Av)

