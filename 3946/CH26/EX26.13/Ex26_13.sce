//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 0.6;     //(m)(Length of rod)
m = 0.25;    //(kg)(Mass of rod)
h = 0.26;    //(m)(Distance between the point of suspension and the centre of gravity of the body)
g = 9.8;     //(m/s^2)(Accn due to Gravity)

//Mass of moment of inertia of the rod about the pivot G:
I0 = (m * (0.3)^2)/3 + m * h^2;    //(kg-m^2)

//Period of small oscillation:
t = (2*%pi) * sqrt(I0/(m*g*h));      //(s)
printf("Period of small oscillation = %.2f s",t);
