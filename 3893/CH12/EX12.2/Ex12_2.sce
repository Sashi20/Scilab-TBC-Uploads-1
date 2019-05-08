//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX12_2.sce

clc;
clear;
Nt=525;//total number of lines
Prr=25;//picture repetition rate

fh=Nt*Prr;
Th=1/fh;
printf("\n Sync frequency= %1.0f Hz \n The total line time= %0.2f microseconds \n",fh,Th*1e6)

