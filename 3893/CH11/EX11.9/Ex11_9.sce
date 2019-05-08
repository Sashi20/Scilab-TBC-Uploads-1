//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX11_9.sce

clc;
clear;
m=1;
A=(1+(1/2)*m^2);
//The constant A denotes the ratio of PT and Pc
B=(m^2)/4;
//The constant B denotes the ratio of Pusb and Pc
//Pusb=Plsb
Psaved=A-B;; // saving in power when the carrier and one side band are suppressed
%saving=(Psaved/A)*100;
printf("\n Percentage savings =%2.2f percentage ",%saving)
