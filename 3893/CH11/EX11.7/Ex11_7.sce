//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX11_7.sce

clc;
clear;
fc=1e6;//carrier frequency in Hz
fmin=50;//minimum range of frequency in Hz
fmax=4500;//maximum range of frequency in Hz
USFmin=fc+fmin;
USFmax=fc+fmax;
printf("\n The upper sideband extends from %4.2f kHz to %4.1f kHz \n",USFmin*1e-3,USFmax*1e-3)
LSFmin=fc-fmin;
LSFmax=fc-fmax;
printf("\n The lower sideband extends from %3.2f kHz to %3.1f kHz \n",LSFmin*1e-3,LSFmax*1e-3)
W=USFmax-LSFmax;
printf("\n Width of channel=%d kHz",W*1e-3)
