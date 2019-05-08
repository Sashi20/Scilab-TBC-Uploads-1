//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX9_2.sce

clc;
clear;
Af=90;//negative feedback gain
Vi1=0.5;//input voltage with feedback in V
Vi2=60e-3;//amplitude of input signal without feedback in V
Vo1=Af*Vi1;//output voltage with feedback in V
Vo2=Vo1;
A=Vo2/Vi2;//open loop gain
beta=(Af-A)/(Af*A);//Feedback factor
printf("\n Open loop gain =%d \n Feedback factor =%f \n",A,beta)

//Answer given in the book is wrong
