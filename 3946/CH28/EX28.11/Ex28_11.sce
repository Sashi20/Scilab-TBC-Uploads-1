//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 1.2;     //(tonnes)(Mass of the vehicle)
r = 100;     //(m)(Radius of the curve)
v = 8.33;    //(m/s)(Velocity of the vehicle)
h = 1;       //(m)(Height of the c.g. of the vehicle from the road level)
a = 0.75;    //(m)(Half of the distance between the centre lines of the wheel)
g = 9.8;     //(m/s^2)(Accn due to Gravity)

//Reaction at the inner wheel:
RA = (m*g)/2 * (1 - (v^2*h)/(g*r*a));    //(kN)
printf("Reaction at the inner wheel = %.2f kN\n",RA);

//Reaction at the outer wheel:
RB = (m*g)/2 * (1 + (v^2*h)/(g*r*a));    //(kN)
printf("Reaction at the outer wheel = %.2f kN",RB);
