//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
t=poly(0,"t");

//Equation of acceleration: 
a = t^3 - 3*t^2 + 5;                   //-(i)
//Integrating (i):
//v = t^4/4 - t^3 + 5*t + C1            -(ii)
v = t^4/4 - t^3 + 5*t;
//Substituting t = 1 and v = 6.25 in (ii):
t = 1;
v = pol2str(v)
x = evstr(v);
C1 = 6.25 - x;

//v = t^4/4 - t^3 + 5*t + 2             -(iii)
//Substituting t = 2;
v = integrate('t^3 - 3*t^2 + 5','t',0,2) + C1;        //(m/s)
printf("Velocity at 2 seconds = %.2f m/s\n",v);

//Displacement at t = 2 seconds:
//Integrating (iii) w.r.t. t:
//s = t^5/20 - t^4/4 + (5*t^2)/2 + 2*t + C2     -(v)
s = t^5/20 - t^4/4 + 5 * t^2/2 + 2*t;
//Substituting t = 1 and s = 8.8 in (v):
t = 1;
x = evstr(s);
C2 = 8.8 - x;

//s = t^5/20 - t^4/4 + (5*t^2)/2 + 2*t + 4.5     -(vi)

//Substituting t = 2 in (vi):
s = integrate('t^4/4 - t^3 + 5*t + 2','t',0,2) + C2;    //(m)
printf("Displacement at 2 seconds = %.2f m",s);
