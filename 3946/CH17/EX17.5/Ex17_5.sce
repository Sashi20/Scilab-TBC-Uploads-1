//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
t1 = 10;          //(s)
s1 = 30;          //(m)
t2 = 12;          //(s)
s2 = 42;          //(m)

//Uniform acceleration:
//u = Initial velocity of the car,
//a = Uniform acceleration.

//30 = u*t + (1/2)*a*t^2 = 10*u + 50*a
//Multiplying it by 6:
//180 = 60*u + 300*a     -(1)

//Distance travelled by the car in 12 seconds:
//42 = 12*u + 72*a
//Multiplying it by 5:
//210 = 60*u + 360*a     -(2)

//(2)-(1):
a = 30/60;            //(m/s^2)
printf("Uniform acceleration = %.2f m/s^2\n",a);

//Velocity at the end of 15 seconds:
t = 15;             //(s)
//Substituting 'a' in equation (1):
u = (180 - 150)/60;          //(m/s)

v = u + a*t;          //(m.s)
printf("Velocity at the end of 15 seconds = %.2f m/s",v);
