//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
P = 4;            //(kN)
W = 2;            //(kN) 
a = 3.0;          //(m)
b = 0.9;          //(m)
c = 1.8;          //(m)

//Using the conditions of equilibrium one by one:
VC = P + W;         //(kN)
RB = (P*a + W*b)/c;      //(kN)
HC = RB;            //(kN)
RC = sqrt(HC^2 + VC^2);         //(kN)

printf("Rb = %.2f kN\n",RB);
printf("Rc = %.2f kN",RC);
