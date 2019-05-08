//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX12_3.sce

clc;
clear;
Ts=12e-6;//supression period in seconds
Kf=0.7;//Kell factor
Nl=525;//total number of lines
Ns=25;//number of suppressed lines
a=4/3;//aspect ratio
Th=76.19e-6;//total line time in seconds

BW=(Kf*a*(Nl-Ns))/(2*(Th-Ts));
printf("\n The bandwidth=%0.2f MHz \n",BW*1e-6)

//There is a error in the book for calculation of bandwidth
//In the book BW=364 MHz insteadof 3.64 MHz 
