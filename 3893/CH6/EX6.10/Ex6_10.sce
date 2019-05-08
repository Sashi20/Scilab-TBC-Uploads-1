//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX6_10.sce

clc;
clear;

Vcc=15;//dc supply in V
Vpeak_peak=24;//peak to peak maximum voltage in V
Rl=100;//load resistance in ohm

Vpeak=Vpeak_peak/2;//peak voltage across the load in V
Ipeak=(Vpeak)/Rl; //Peak value of load current in A
Idc=(2/%pi)*Ipeak;//DC power drawn from the battery in A

Pdc=Vcc*Idc;//Power drawn from the battery in W
Pl=(1/2)*(Vpeak^2/Rl);//Power delivered to the load in W
Pd=Pdc-Pl;//power dissipated in the two transistors in W
Pt=Pd/2;
printf("\n Power dissipated by each transistor= %1.0f mW",Pt*1e3)



