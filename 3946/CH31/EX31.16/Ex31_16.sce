//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
theta = 30;   //(Degrees)(Inclination of the plane)

//k^2 = 0.4*r^2
//Minimum value of coefficient of friction:
//u = (tand(theta))/[(k^2 + r^2)/k^2];
mu = tand(theta) * (0.4/1.4);
printf("Minimum value of coefficient of friction = %.2f",mu);
