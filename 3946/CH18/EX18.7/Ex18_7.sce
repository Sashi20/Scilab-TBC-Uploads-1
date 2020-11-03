//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
t = poly(0,"t");
//Equation of acceleration:
a = 2 - 3*t;              //-(ii)

//(a) Acceleration and velocity at the time of start:
//Substituting t = 0 in (i):
a = pol2str(a);
t = 0;
a = evstr(a);    //(m/s^2)
printf("Acceleration at the time of start = %.2f m/s^2\n",a);

//Rewriting equation (i):
//dv = (2 - 3*t) dt             -(ii)

//Integrating (ii):
//v = 2*t - (3*t^2)/2 + C1      -(iii)

//Substituting t = 5 and v = 20 in (iii):
t = 5;
v = 2*t - 3*t^2/2;
x = evstr(v);
C1 = 20 - x;
//v = 2*t - (3*t^2)/2 + C1      -(iv)

//Substituting t = 0 in (iv):
v = integrate('2 - 3*t','t',0,0) + C1;           //(m/s)
printf("Velocity at the time of start = %.2f m/s\n",v);

//(b) Distance from the origin at the start of observation:
//Rewriting (iv):
//ds = (2*t - (3*t^2)/2 + 47.5) dt
//Integrating:

//s = t^2 - t^3/2 + 47.5*t + C2         -(v)
//Substituting t = 10 and s = 85;
t = 10;
s = t^2 - t^3/2 + 47.5*t;
x = evstr(s);
C2 = 85 - x;

//s = t^2 - t^3/2 + 4.75*t + 10

//Substituting t = 0 in the above equation:
s = C2;     //(m)
printf("Distance from the origin at the start of observation = %.2f m\n",s);

//(c) Time after start of observations in which the velocity becomes zero:
//Substituting v = 0 in (iv):
//3*t^2 - 4*t - 95 = 0;
p = poly([-95 -4 3],'t','c');
x = roots(p);
x = x(1);
printf("Time after start of observations in which the velocity becomes zero = %.2f s",x);
