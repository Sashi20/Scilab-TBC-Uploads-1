//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX2_1.sce

clc;
clear;
Vcc=10;//dc supply voltage in V
Rc=2e3;//Collector resistance in ohm
Rb=300e3;//base resistance in ohm
beta=75;
Vbe=1;//voltage across base emitter terminal in V

Ib=(Vcc-Vbe)/Rb;
Ic=beta*Ib; 
Vce=Vcc-(Ic*Rc);

printf("\n The operating point is (%0.2f mA;%0.1f V) \n",Ic*1e3,Vce)

Icsat=Vcc/Rc;
if Ic<Icsat then
    printf("\n The operating point is in active region \n")
else
    printf("\n The operating point is not in active region")
end

//There is a error in the Vce answer 
//from the given data Vce=5.5V and it is mistakenly given as 3.5V
//and also Icsat=5mA not 4mA
