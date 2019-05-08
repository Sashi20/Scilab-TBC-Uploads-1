//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX13_2.sce

clc;
clear;
Rm=150;//Resistance of d'Arsonval movement in ohm 
CS=0.001;//Current sensitivity in A
//CS=Ia1=Ib1=Ic1=Id1
R_shunt=(CS*Rm)/(0.001-0.0001);//Total shunt resistance required
R=750;//The sum shunt resistance that have included in the shunt branch is not feasible to prepare resistors. Therefore 750 ohm resistanceis connected in series with the movement

//case (a): Range(0-1)mA
Ia=0.001;//Current Range of the switch in A
Ia1=0.0001;//Current through the switch in A
Ia2=Ia-Ia1;//Current through the shunt branch in A
 Rma=Rm+R;//Resistance of the meter branch in ohm
 Rsa=(Rma*Ia1)/Ia2;//Resistance of the shunt branch 
 
 
 //Casec(b): Range(0-10)mA
 //When the range of switch is 10 mA, position R1 goes into series
Ib=0.01;//Current Range of the switch in A
Ib1=0.0001;//Current through the switch in A
Ib2=Ib-Ib1;//Current through the shunt branch in A
Rmb=Rm+R;//Resistance of the meter branch without R1 in ohm
R1=((Rsa*Ib2)-(Rmb*Ib1))/(Ib1+Ib2);

//Casec(c): Range(0-100)mA
//When the range of switch is 100 mA, position R1 and R2 goes into series
Ic=0.1;//Current Range of the switch in A
Ic1=0.0001;//Current through the switch in A
Ic2=Ic-Ic1;//Current through the shunt branch in A
Rmc=Rma+R1;//Resistance of the meter branch without R2 in ohm
Rsc=Rsa-R1;//Resistance of the shunt branch except R2 
R2=((Rsc*Ic2)-(Rmc*Ic1))/(Ic1+Ic2);


//Casec(d): Range(0-1)A
//When the range of switch is 1 A, position R1, R2 and R3 goes into series
Id=1;//Current Range of the switch in A
Id1=0.0001;//Current through the switch in A
Id2=Id-Id1;//Current through the shunt branch in A
Rmd=Rma+R1+R2;//Resistance of the meter branch without R3 in ohm
Rsd=Rsa-R1-R2;//Resistance of the shunt branch except R3 
R3=((Rsd*Id2)-(Rmd*Id1))/(Id1+Id2);
R4=1-R3;

printf("\n Four resistance of shunt branch\n\t R1=%0.1f ohm \n\t R2=%0.1f ohm \n\t R3=%0.1f ohm \n\t R4=%0.1f ohm\n",R1,R2,R3,R4)

 
