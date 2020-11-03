//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
t=poly(0,"t");
//Equation of displacement:
s = 12*t + 3*t^2 - 2*t^3;          //-(i)

//Velocity at start:
//Differentiating (i) w.r.t. t:
v = derivat(s);                   //-(ii)
a = derivat(v);                   //-(iii)

//Substituting t = 0 in (ii):
v = pol2str(v);
t = 0;
v = evstr(v);    //(m/s)
printf("Velocity at start = %.2f m/s\n",v);

//Acceleration at start:
//Differentiating (ii) w.r.t. t:

//Substituting t = 0 in (iii):
a = pol2str(a);
t = 0;
a = evstr(a);              //(m/s^2)
printf("Acceleration at start = %.2f m/s^2\n",a);

//Acceleration, when the velocity is zero:
//Substituting (ii) = 0:
//12 + 6*t - 6*t^2 = 0
q = poly([12 6 -6],'t','c');
x = roots(q);
t = x(1);            //t=2

//Substituting t = 2 in (iii):
a = derivat(derivat(s));
a = pol2str(a);
a = evstr(a);      //(m/s^2)
printf("Acceleration, when the velocity is zero = %.2f m/s^2",a);
