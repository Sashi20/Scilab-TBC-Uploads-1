//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 2;          //(kg)
m2 = 4;          //(kg)
m3 = 6;          //(kg)
m4 = 8;          //(kg)
theta1 = 0;      //(degrees)
theta2 = 60;     //(degrees)
theta3 = 120;    //(degrees)
theta4 = 135;    //(degrees)
r1 = 1.2;        //(m)
r2 = 0.8;        //(m)
r3 = 0.4;        //(m)
r4 = 0.2;        //(m)
omega = 500;      //(r.p.m.)(Angular velocity of the shaft)
r = 0.8;      //(m)(Radius of blancing mass)

//Let m = Magnitude of the balancing mass, and
//theta = Angle, which the balancing mass makes with A.

//Resolving all the assumed forces horizontally:
H = m1*r1*cosd(theta1) + m2*r2*cosd(theta2) + m3*r3*cosd(theta3) + m4*r4*cosd(theta4);          //-(1)

//Resolving all the assumed forces vertically:
V = m1*r1*sind(theta1) + m2*r2*sind(theta2) + m3*r3*sind(theta3) + m4*r4*sind(theta4);         //-(2)

//Resultant assumed force:
R = sqrt(H^2 + V^2);

//m * r = R;
m = R/r;        //(kg)
printf("Magnitude of the balancing mass = %.2f kg\n",m);

theta = atand(V/H);    //(Degrees)

//Since, E and V are both positive, therefore the resultant of these assumed forces lies in the first quadrant. Thus the balancing force must act in its opposite direction i.e., in the third quadrant.
A = 180 + theta;     //(Degrees)
printf("Angle, which the balancing mass makes with A = %.2f degrees",A);
