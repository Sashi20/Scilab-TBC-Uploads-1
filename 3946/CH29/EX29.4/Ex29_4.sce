//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 10;      //(kg)(Mass of body A)
r1 = 100;     //(mm)(Radius of the rotating body A)
theta1 = 0;   //(Angle which the body A makes with the horizontal)
m2 = 9;       //(kg)(Mass of body B)
r2 = 125;     //(mm)(Radius of the rotating body B)
theta2 = 60;  //(Degrees)(Angle which the body B makes with the horizontal)
m3 = 16;      //(kg)(Mass of body C)
r3 = 50;      //(mm)(Radius of rotating body C)
theta3 = 135; //(Degrees)(Angle which the body C makes with the horizontal)
omega = 100;      //(r.p.m.)(Angular velocity)
r = 150;      //(mm)(Radius of balancing mass D)

//Let m = Mass of the balancing body D, and
//theta = Angle, which the balancing body makes with A.

//Resolving all the assumed forces horizontally:
H = m1*r1*cosd(theta1) + m2*r2*cosd(theta2) + m3*r3*cosd(theta3);    //-(1)

//Resolving the assumed forces vertically:
V = m1*r1*sind(theta1) + m2*r2*sind(theta2) + m3*r3*sind(theta3);    //-(2)

//Resultant assumed force:
R = sqrt(H^2 + V^2);

//m * r = R
m = R/r;       //(kg)
printf("Mass of the balancing body D = %.2f kg\n",m);

theta = atand(V/H);      //(Degrees)

//Since, H and E are both positive, therefore the resultant of these forces lies in the first quadrant. It is thus obvious, that the balancing force must act in its opposite direction. Therefore actual angle of the balancing body:
A = 180 + theta;          //(Degrees)
printf("Angle, which the balancing body makes with A = %.2f degres",A);    //The answers vary due to round off error
