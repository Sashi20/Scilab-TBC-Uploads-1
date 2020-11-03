//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 5000;     //(kg)(Mass of the truck)
v = 5;        //(m/s)(Velocity of the truck)
alpha = asind(1/50);     //(Degrees)
g = 9.8;      //(m/s^2)(Accn due to Gravity)

//Track resistance per tonne mass of truck:

//Resistance due to inclination:
RI = m*g*sind(alpha);      //(N)

//Track resistance = Resistance due to inclination:
Tr = RI;                   //(N)
//Track resistance per tonne mass of the truck:
Trp = Tr/m * 1000;          //(N)
printf("Track resistance per tonne mass of the truck = %.2f N\n",Trp);

//Power to be exerted by the engine for moving the truck upwards:

//Total resisting force:
TR = (Tr + RI)/1000;      //(kN)

//Work done in one second:
P = TR * (2 * v);         //(kW)
printf("Power to be exerted by the engine for moving the truck upwards = %.2f kW",P);
