//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
t=poly(0,"t");
//Equation of displacement: 
s = 18*t + 3*t^2 - 2*t^3;         //-(i)

//(1) Velocity and acceleration at start:
//Differentiating (i) w.r.t. t:
v = derivat(s);                   //-(ii)

//Substituting t = 0 in (ii):
t = 0;
v = pol2str(v);
v = evstr(v);     //(m/s)
printf("Velocity at start = %.2f m/s\n",v);

//Differentiating (ii) w.r.t. t:
a = derivat(derivat(s))              //-(iv)
//Substituting t = 0 in (iv):
t = 0;
a = pol2str(a);
a = evstr(a);        //(m/s^2)
printf("Acceleration at start = %.2f m/s^2\n",a);

//(2) Time, when the particle reaches its maximum velocity:
//Equating (iii) to 0;
//6 - 12t = 0                   (v)
A = [-12];
c = [6];
[x,nsA] = linsolve(A,c);
t = x;       //(s)
printf("Time, when the particle reaches its maximum velocity = %.2f s\n",t);

//(3) Maximum velocity of the particle:
//Substituting t = 0.5 in (ii):
v = derivat(s);
v = pol2str(v);
v = evstr(v);
printf("Maximum velocity of the particle = %.2f m/s",v);
