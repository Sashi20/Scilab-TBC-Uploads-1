//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
w = 1;       //(tonne)(Weight of the vehicle)
r = 40;      //(m)(Radius of the curve)
h = 0.75;    //(m)(Height of the centre of gravity of the vehicle from road level)
a = 0.6;     //(m)(Half of the distance between centre lines of the wheels)
g = 9.8;     //(m/s^2)(Accn due to gravity)

//Maximum speed at which the vehicle should run, in order to avoid overturning:
vmax = sqrt((g*r*a)/h) * 3600/1000;      //(km.p.h.)
printf("Maximum speed at which the vehicle should run, in order to avoid overturning = %.2f km.p.h.",vmax);    //The answers vary due to round off error
