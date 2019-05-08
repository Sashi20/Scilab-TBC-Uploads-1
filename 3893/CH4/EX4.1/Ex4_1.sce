//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX4_1.sce

clc;
clear;
//following are the values of resistors used in a CE amplifier in ohm
R1=10e3;
R2=5e3;
Rc=1e3;
Re=2e3;
Rl=1e3;
Vcc=12;//supply voltage in V
//from figure 4.2
Vce=Vcc;
Icmax=Vcc/(Rl+Re);//Maximum collector current in A
printf("\n The coordinates of end points of the dc load lines are (0;%d V) and (%d mA;0)\n",Vce,Icmax*1e3)

V2=(R2*Vcc)/(R1+R2);//voltage across R2 in V
Vbe=0.7;//for silicon Vbe is 0.7 in V
Ie=(V2-Vbe)/Re;//emitter current in A
Ic=Ie;//collector current in A
Vce=Vcc-(Ic*(Rc+Re));
printf("\n The coordinates of the Q point are (%0.2f mA;%0.2f V)\n",Ic*1e3,Vce)

Rac=(Rc*Rl)/(Rc+Rl);//effective load resistance in ohm
Vcemax=Vce+(Ic*Rac);
Icmax=Ic+(Vcemax/Rac);
printf("\n The coordinates of end points of the ac load lines are(%0.3f V;0)and(%0.1f mA;0)\n",Vcemax,Icmax*1e3)



