//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
s = poly(0,"s");
//Equation of acceleration:
a = 10 - 0.006*s^2;

//Rewriting the given equation:
//v dv = (10 - 0.006*s^2) ds          -(i)

//(a) Velocity of the particle, when it has travelled 50 metres:
//Integrating (i):
//v^2 = 20*s - 0.004*s^3 + 2*C1       -(ii)


//Substituting s = 0 and v = 0 in (ii):
C1 = 0;
//v^2 = 20*s - 0.004*s^3              -(iii)

//Substituting s = 50 in (iii):
vsquare = 2*(integrate('10 - 0.006*s^2','s',0,50));
v = sqrt(vsquare);    //(m/s)
printf("Velocity of the particle, when it has travelled 50 metres = %.2f m/s\n",v);

//(b) Distance travelled by the particle, when it comes to rest:
//Substituting v = 0 in equation (iii):
p = 20*s - 0.004*s^3;     //(m)
x = roots(p);
x = x(1);
printf("Distance travelled by the particle, when it comes to rest = %.2f m",x);
