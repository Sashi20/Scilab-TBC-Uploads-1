//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
TA = 40;   //(No. of teeth on wheel A)
TB = 50;   //(No. of teeth on wheel B)
TC = 20;   //(No. of teeth on wheel C)
v = -50;   //(r.p.m.)(Speed of driving shaft)
u = 100;   //(r.p.m.)(Speed of arm)

//Since the speed of the arm is 100 r.p.m.:
y = 100;

//As the speed of the driving shaft is 50 r.p.m.:
//x + y = -50;
x = -50 - y;

//Speed of the driving shaft:
S = y - x*(TA/TC);     //(r.p.m.)
printf("Speed of the driving shaft = %.2f r.p.m.",S);
