//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
r = 50;     //(m)(Radius of level track)
mu = 0.45;   //(Coefficient of friction)
g = 9.8;    //(m/s^2)(Accn due to Gravity)

//Maximum speed at which the car can travel:
vmax = sqrt(mu*g*r) * 3600/1000;       //(km.p.h.)
printf("Maximum speed at which the car can travel = %.2f km.p.h.",vmax);    //The answers vary due to round off error
