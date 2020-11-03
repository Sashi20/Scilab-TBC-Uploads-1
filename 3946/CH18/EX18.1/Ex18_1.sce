//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
t=poly(0,"t");
//Equation of displacement:
s = t^3 - 2*t^2 + 3;                 //-(i)

//Velocity after 5 seconds:
//Differentiating (i) w.r.t. t:
v = derivat(s);                     //-(ii)
a = derivat(v);                     //-(iii)
//Substituting t = 5 in (ii):
v = pol2str(v);
t = 5;
v = evstr(v);    //(m/s)
printf("Velocity after 5 seconds = %.2f m/s\n",v);

//Acceleration after 5 seconds:

//Substituting t = 5 in equating (iii):
a = pol2str(a);
t = 5;
a = evstr(a);           //(m/s^2)
printf("Acceleration after 5 seconds = %.2f m/s^2",a);
