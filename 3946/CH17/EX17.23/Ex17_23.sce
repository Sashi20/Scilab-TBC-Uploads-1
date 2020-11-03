//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
s = 20;        //(m)(Distance travelled by particle)
t = 1;         //(s)(Time)
g = 9.8;       //(m/s^2)(Accn due to Gravity)

//Let u = Initial velocity of particle at the time of starting.
//20 = u*t + (1/2)*g*t^2;
u = (s - (1/2)*g*t^2)/t;     //(m/s)

//Velocity of the particle after covering 20 metres:
v = u + g*t;          //(m/s)

//Let t be the time required to cover a distance of 20 metres when the particle has initial velocity:
//Distance covered by the particle in this time:
//20 = u*t + (1/2)*g*t^2;
//4.9*t^2 + 24.9*t - 20 = 0;

//Taking positive value:
p = poly([-20 24.9 4.9],'t','c');
t = roots(p);
t = t(2);     //(Taking positive value for time)

printf("Time required to cover next 20 metres = %.2f s",t);
