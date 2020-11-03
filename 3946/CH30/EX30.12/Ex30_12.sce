//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 300;   //(tonnes)(Mass of the body)
alpha = asind(1/125);    //(Degrees)
v = 10;    //(m/s)(Speed of the train)
Tr = 18;   //(kN)(Tractive resistance)
a = 0.2;   //(m/s^2)(Acceleration of the engine)
g = 9.8;   //(m/s^2)(Accn due to Gravity)

//Power transmitted by the engine when the train moves with a uniform speed;

//Resistance due to Inclination:
RI = m*g*sind(alpha);       //(kN)

//Total resisting force:
TR = RI + Tr;      //(kN)

//Work done in one second:
P = TR * v;        //(kW)
printf("Power transmitted by the engine when the train moves with a uniform speed = %.2f kW\n",P);

//Power tansmitted by the engine when the train is moving up with a uniform acceleration:

//Force required to accelerate the the engine and train:
F = m*a;                   //(kN)

//Total resisting force:
TR = RI + Tr + F;          //(kN)

//Work done in one second:
P = TR * v;                //(kW)
printf("Power tansmitted by the engine when the train is moving up with a uniform acceleration = %.2f kW",P);
