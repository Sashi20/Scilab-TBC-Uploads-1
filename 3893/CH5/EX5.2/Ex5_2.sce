//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX5_2.sce

clc;
clear;
//From figure 5.4(a) the following values are taken
R1=1e6;
R2=0.5e6;
Rd=4e3;
Rs=8e3;
Vdd=18;

Vg=(Vdd*R2)/(R1+R2);//Gate to ground voltage in V

printf("\t (a)")
Vgs=-2;//gate-source voltage in V
Id=(Vg-Vgs)/Rs;  
Vd=Vdd-(Id*Rd);
printf("\n The drain current= %d mA",Id*1e3)
printf("\n The drain voltage= %d V  \n",Vd)

printf("\n\t (b)")
Vgs=-4;//gate-source voltage in V
Id=(Vg-Vgs)/Rs;
Vd=Vdd-(Id*Rd);
printf("\n The drain current= %0.2f mA",Id*1e3)
printf("\n The drain voltage= %d V \n",Vd)

//There is a mistake in the book
//Rd value is substituted as 8 kohm insteadof 4 kohm in Vd formula
//hence the output value of Vd get changed



