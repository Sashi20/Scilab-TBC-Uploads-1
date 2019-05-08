//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX9_3.sce

clc;
clear;
Ao=50;//open loop gain in dB
beta=-0.004;//Negative feedback factor

//20 log(V0/Vi)=A0
//let V0/Vi=A
A=10^(Ao/20);
//Let B=dA/A
B=0.01;//10% decreased overall gain
//let C=dAf/Af
C=B/(1-(beta*A));

printf("\n The change in overall gain=%0.4f",-C)
