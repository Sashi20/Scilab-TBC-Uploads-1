//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX6_9.sce

clc;
clear;
Vpeak=15;//peak volatge across the load in V
Rl=12;//load impedence in ohm
Vcc=24;//dc supply voltage in V
Ipeak=Vpeak/Rl;//Peak value of load current in A
Idc=(2/%pi)*Ipeak;//DC current drawn from the battery in A

Pi=Vcc*Idc;//input power in W
printf("\n Input power= %0.1f W \n",Pi)

Po=Vpeak^2/(2*Rl);//Output power in W
eta=(Po/Pi)*100;
printf("\n Efficiency= %0.2f percentage \n",eta)
//answer in the book was wrong
//efficiency formula given in the book was wrong
//there is a error in the substitution of Vpeak value in output power equation
