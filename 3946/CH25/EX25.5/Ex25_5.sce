//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m2 = 20;        //(kg)(Mass of block A)
m1 = 10;        //(kg)(Mass of block B)
mu = 0.25;      //(Coefficient of friction)
u = 0;          //(Initial velocity)
s = 1;          //(m)(Vertical distance)
g = 9.8;        //(m/s^2)(Accn due to Gravity)

//Let v = Final velocity of the block A.

//Acceleration of the block A:
a = g * [(m1 - mu*m2)/(m1 + m2)];         //(m/s^2)

//Using: v^2 = u^2 + 2 * a * s;
v = sqrt(u^2 + 2 * a * s);               //(m/s)
printf("Final velocity of the block A = %.2f m/s",v);
