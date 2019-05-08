//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX6_5.sce

clc;
clear;
Tc=80;//case temperature in degree celcius
Pd=5;//power dissipation of the transistor in W
theta=8;//thermal resistance in degree Celcius per watt

Ta=Tc-(Pd*theta);
printf("\n Ambient temperature =%d degree celcius",Ta)
