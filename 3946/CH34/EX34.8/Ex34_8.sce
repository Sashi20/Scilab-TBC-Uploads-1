//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
TS = 30;    //(No. of teeth on sun wheel)
TP = 50;    //(No. of teeth on planet wheels)
P = 4000;   //(W)(Power transmitted)
v = 300;    //(r.p.m.)(Speed of driving shaft)
n = 0.95;   //(Efficiency)

//Power tansmitted by the driven shaft:
PDS = P * n;    //(W)

//Speed of the driven shaft:

//Let dA, dP and dS be the pitch circle diameters of wheels A, P and S respectively. From geometry:
//dA = dS + 2*dP

//Since the no. of teeth are proportional to their diameters:
TA = TS + 2*TP;

//As the wheel A is fixed:
//x = -y           -(i)

//As the sun wheel rotates at 300 r.p.m.
//300 = y - x*(TA/TS)
y = (v * 3/16);
x = -y;

//Speed of the driven shaft:
N = y;    //(r.p.m.)
printf("Speed of the driven shaft = %.2f r.p.m.\n",N);

//Torque tansmitted by the driven shaft:
//Let T = Torque transmitted by the shaft.

//Power tansmitted by the shaft:
//3800 = 2*%pi*N*T;
T = 3800/353.4;     //(N-m)
printf("Power tansmitted by the shaft = %.2f N-m",T);
