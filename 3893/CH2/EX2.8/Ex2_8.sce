//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX2_8.sce

clc;
clear;
Rc=6e3;//collector resistance in ohm
Re=9e3;//emitter resistance in ohm
R1=150e3;
R2=50e3;
Vcc=12;//dc supply voltage in V
Vbe=0.3;//Base emitter voltage in V for Germanium
beta=99;

V2=Vcc*(R2/(R1+R2));
Ic1=(V2-Vbe)/Re;
Vce1=Vcc-(Ic1*(Rc+Re));
printf("\n The operating point by approximate method is (%0.1f mA;%0.1f V)",Ic1*1e3,Vce1)

Vth=Vcc*(R2/(R1+R2));
Rth=(R1*R2)/(R1+R2);
Ic2=(beta*Vth)/(Rth+(beta+1)*Re);
Vce2=Vcc-(Rc+Re)*Ic2;
printf("\n The operating point by using Thevenins Theorem is (%0.4f mA;%0.3f v)",Ic2*1e3,Vce2)

CE=((Ic1-Ic2)/Ic1)*100;
VE=((Vce1-Vce2)/Vce1)*100;
printf("\n Current error= %0.1f percentage \n Voltage error= %0.2f percentage",CE,VE)

