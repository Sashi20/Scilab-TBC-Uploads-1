//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
TA = 72;    //(No. of teeth on wheel A)
TC = 32;    //(No. of teeth on wheel C)
ND = 18;    //(r.p.m.)(Speed of arm D)

//Speed of wheel C:
y = 18;    //(r.p.m.)

//Since wheel A is ficed:
x = (y * TA)/TC;     //(r.p.m.)

//Speed of wheel C:
NC = x + y;         //(r.p.m.)
printf("Speed of wheel C = %.2f r.p.m.\n",NC);

//Speed of wheel B:
//Let dA, dB and dC be the pitch circle diameters of wheels A, B and C respectively. From geometry:
//2*dB + dC = dA

//Since no. of teeth are proportional to their diameters:
TB = 20;
//Speed of wheel B:
NB = y - x*(TC/TB);    //(r.p.m.)
printf("Speed of wheel B = %.2f r.p.m.\n",NB);

