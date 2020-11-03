//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//Considering the motion of the man from the top of the tower to the water surface:
m = 60;      //(kg)(Mass)
s = 20;      //(m)(Height of tower)
g = 9.8;     //(m/s^2)(Accn due to Gravity)

// v = Final velocity of the man when he reaches the water surface.
//Using: v^2 = u^2 + 2 * g * s;
v = sqrt(u^2 + 2 * g * s);

//Considering the motion of the man from the water surface up to the point in water from where he started rising.
u = v;     //(m/s)(Initial velocity)
v = 0;     //(Final velocity)
s = 2;     //(m)(Distance covered)

//Let a = Retardation due to water resistance.
//Using: v^2 = u^2 + 2 * a * s;
a = u^2/(2 * s);      //(m/s^2)

//Average resistance of water:
F = m * a;            //(N)
printf("Average resistance of water = %.2f N",F);
