//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX4_3.sce

clc;
clear;
delIb=15e-6;//signal(input) current changes in A
delIc=1.8e-3;//Collector current changes in A
delVi=0.03;//change in signal voltage in V
Rc=5e3;//collector resistance in ohm
Rl=10e3;//load resistance in ohm

printf("\t (a)")
Ai=delIc/delIb;
printf("\n Current gain= %d \n",Ai)

printf("\t (b)")
Rin=delVi/delIb;  
printf("\n Input impedence= %1.0f kohm \n",Rin*1e-3)

printf("\t (c)")
Rac=(Rc*Rl)/(Rc+Rl);
Av=(delIc*Rac)/(delIb*Rin);
printf("\n Voltage gain= %d \n",Av)
