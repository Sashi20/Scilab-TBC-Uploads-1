//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 0.5;       //(kg)(Mass of hammer)
M = 0.025;     //(kg)(Mass of nail)
v = 5;         //(m/s)(Velocity of hammer)
x = 0.025;     //(m)(Distance through which the nail is driven into wooden block)
g = 9.8;       //(m/s^2)(Accn due to Gravity)

//Let h = Height through which the pile hammer fell before striking the pile.

//v = sqrt(2*g*h);
h = v^2/(2*g);      //(m)

//Resistance offered by the wooden block:
R = [m^2 * g * h]/[x * (m + M)] + (m + M)*g;    //(N)
printf("Resistance offered by the wooden block = %.2f N",R);
//The answers vary due to round off error
