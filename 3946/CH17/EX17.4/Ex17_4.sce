//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = 20;           //(m/s)(Initial velocity)
v = 0;            //(Final velocity)
s = 50 - 10;      //(m)(Distance travelled by the car)

//(i) Retardation:
//Let a = acceleration of the motorist.
//v^2 = u^2 + 2*a*s;
a = -(u^2)/(2*s);            //(Retardation)
printf("Retardation = %.2f m/s^2\n",abs(a));

//(ii)Time required to stop the car:
//t = Time required to stop the car in seconds.
//v = u + a*t;
t = -u/a;                //(s)
printf("Time required to stop the car = %.2f s",t);
