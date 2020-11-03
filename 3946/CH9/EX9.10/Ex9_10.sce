//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
n = 2;               //(No. of threads)
p = 4;               //(mm)(Pitch)
r = 25;              //(mm)(Mean radius)
mu = 0.3;             //(Coefficient of friction)
phi = atand(mu);      //(degrees)
W = 500;             //(N)(Pressure)

alpha = atand((n * p)/(2 * %pi * r));       //(degrees)

//Effort required at the mean radius of the screw to press the books:
P = W * tand(alpha + phi);          //(N)

//Torque required to press the books:
T = P * r;            //(N-mm)
printf("Torque required to press the books = %.2f N-mm",T);                      //The answers vary due to round off error
