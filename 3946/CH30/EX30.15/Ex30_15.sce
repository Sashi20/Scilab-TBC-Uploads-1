//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 50;        //(tonnes)(Mass of the engine)
m2 = 300;       //(tonnes)(Mass of the train)
m = m1 + m2;    //(tonnes)(Total mass)
alpha = asind(1/100);      //(Degrees)
u = 0;          //(Initial velocity)
Tr = 17.5;      //(kN)(Tractive resistance)
v = 10;         //(m/s)(Final velocity)
s = 1000;       //(m)(Distance)
g = 9.8;        //(m/s^2)(Accn due to Gravity)

//Power of the engine:
//Let a = Acceleration of the train.

//Resistance due to inclination:
RI = m*g*sind(alpha);        //(kN)

//Using: v^2 = u^2 + 2*a*s;
a = [v^2 - u^2]/(2*s);       //(m/s^2)

//Force required to accelerate the engine and the train:
F = m*a;                     //(kN)

//Total resisting force:
TR = Tr + RI + F;            //(kN)

//Work done in one second:
P = TR*v;                   //(kW)
printf("Power of the engine = %.2f kW\n",P);

//Tension in the coupling:
//Tractive resistance:
Tr = [m1 * m2]/s;       //(kN)

//Resistance due to inclination:
RI = m2*g*sind(alpha);      //(kN)

//Force required for acceleration(for train only):
F = m2 * a;             //(kN)

//Tension in the coupling:
T = F + RI + Tr;            //(kN)
printf("Tension in the coupling = %.2f kN",T);
