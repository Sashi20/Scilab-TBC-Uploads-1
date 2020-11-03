//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 200;                //(tonnes)(Mass of the body)
Tr = 20;                //(kN)(Tractive resistance)
alpha = asind(1/125);
v = 8;                  //(m/s)(Speed of the train)
g = 9.8;                //(m/s^2)(Accn due to Gravity)

//Power of the locomotive:

//Resistance due to inclination:
RI = m*g*sind(alpha);   //(kN)

//Total resisting force:
TR = Tr + RI;           //(kN)

//Work done in one second:
P = TR * v;             //(kW)
printf("Power = %.2f kW\n",P);    //The answers vary due to round off error

//Speed which the train can attain on a level track:

//P = Tractive resistance * Speed of the train;

//Speed of the train:
V = P/Tr * 3600/1000;     //(km.p.h.)
printf("Speed of the train = %.2f km.p.h.",V);    //The answers vary due to round off error
