//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX5_1.sce

clc;
clear;
Vp=-3.5;//pinchoff voltage in V
Idss=5e-3;
Vgs=-2;//gate-source voltage in V
Id=Idss*(1-(Vgs/Vp))^2;
printf("\n The drain current= %0.3f mA",Id*1e3)


