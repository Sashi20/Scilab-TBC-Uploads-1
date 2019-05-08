//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX11_1.sce

clc;
clear;
fc=600;//carrier frequency in kHz
fm=1.5;//modulating frequency in kHz

printf("(1)\n")
usf=fc+fm;
lsf=fc-fm;
printf("\n upper side band frequency=%0.1f kHz \n ",usf)
printf("\n lower side band frequency=%0.1f kHz \n ",lsf)

printf("\n(2)\n")
BW=2*fm;
printf("\n Bandwidth=%d kHz",BW)
