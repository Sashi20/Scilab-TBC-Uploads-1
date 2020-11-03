//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = -29.4;       //(m/s)(Initial velocity)
h = 34.3;        //(m)(Height of tower)
g = 9.8;         //(m/s^2)(Accn due to Gravity)

//Let t = Time taken by the stone to reach the foot of the tower.

//Using s = u*t + (1/2)*g*t^2;
//t^2 - 6*t - 7 = 0;
//Solving the quadratic equation(using positive value):
p = poly([-7 -6 1],'t','c');
t = roots(p);
printf("Time taken by the stone to reach the foot of the tower = %.2f s",t(1));
//Positive root
