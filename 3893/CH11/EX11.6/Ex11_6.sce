//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX11_6.sce

clc;
clear;
fm=12.5e3;//maximum modulating frequency in Hz
BW=10e6;//available bandwidth in Hz
BWreq=fm*2;//required bandwidth of each stations in Hz
Ns=BW/BWreq;
printf("\n Number of stations that can be accommodated in the available BW = %d ",Ns)
