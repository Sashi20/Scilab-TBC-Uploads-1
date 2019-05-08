//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX10_5.sce

clc;
clear;
f=3e3;//frequency of the Wiens bridge oscillator in Hz
R=200e3;//resistors value in ohm
//equation of frequency for Wiens bridge oscillator is f=1/(2*%pi*C*R)
C=1/(2*%pi*f*R);
printf("\n The value of capacitance =%0.1f pF",C*1e12)

//Answer given in the book is vary 
//C=265.5 pF is slightly wrong(point variation)
//There is a calculation error in the book
