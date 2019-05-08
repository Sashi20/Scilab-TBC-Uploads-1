//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX4_4.sce

clc;
clear;
//the following are the h parameters values given 
hfe=350;
hie=5e3;
hre=2.5e-4;
hoe=35e-6;
Rl=5e3;//load resistance in ohm
Rs=15e3;//source resistance in ohm

Ai=hfe/(1+(hoe*Rl));
printf("\n Current gain= %0.1f \n",Ai)
Av=-(hfe*Rl)/(hie+((hie*hoe)-(hre*hfe))*Rl);
printf("\n Voltage gain= %0.1f \n",Av)
Zie=hie-((hre*hfe*Rl)/(1+(hoe*Rl)));
printf("\n Input impedence= %0.3f kohm \n",Zie*1e-3)
Zo=(hie+Rs)/((hre*hfe)+(hoe*(hie+Rs)));
printf("\n Output impedence= %0.1f kohm \n",Zo*1e-3)

//There is a error in the book for calculation of current gain
//In the book current gain value is 279.9 insteadof 297.9 


