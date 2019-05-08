//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX11_5.sce

clc;
clear;
Va=5; //amplitude of audio signal in V
Vp=15; //peak voltage of carrier in V
fm=6e3;//carrier frequency in Hz
fc=10e6;//modulating frequency in Hz
m=Va/Vp;
printf("\n Modulation Index=%1.2f \n",m)
USF=fc+fm;
LSF=fc-fm;
printf("\n Upper side band frequency=%0.3f MHz",USF*1e-6)
printf("\n Lower side band frequency=%0.3f MHz \n",LSF*1e-6)
Vs=(1/2)*(m*Vp);//amplitude of side bands in V
printf("\n Amplitude of side bands=%0.1f V",Vs)
