//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX6_6.sce

clc;
clear;
//from figure 6.17

CB=100-50;
DB=100-25;
AD=6;
//EC/AD=CB/DB (Similar triangles)
EC=AD*(CB/DB);
printf("\n Power dissipation at 50 degree celcius =%d W",EC)

