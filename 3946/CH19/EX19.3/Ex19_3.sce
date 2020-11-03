//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
v1 = 20;      //(km.p.h)(Velocity 1)
t1 = 45;      //(Degrees)(Direction 1)

v2 = 12;      //(km.p.h)(Velocity 2)
t2 = 30;      //(Degrees)(Direction 2)

//From triangle ACD:
//y = (20 - x)/tand(45) = 20 - x     -(1)

//In triangle BCD:
//y = (12 - x)/tand(30) = 12 - x;    -(2)

//Equating (1) and (2):
x = (v1*tand(t2) - v2)/(tand(t2) - 1);          //(km)

//Substituting x in (1):
y = 20 - x;              //(km)

alpha = atand(x/y);       //(Degrees)(Actual direction)
printf("Actual direction = %.2f degrees\n",alpha);    //The answers vary due to round off error

//In triangle OCD:
CO = sqrt(x^2 + y^2);     //(km.p.h.)
printf("Actual velocity = %.2f km.p.h.",CO);
//The answers vary due to round off error
