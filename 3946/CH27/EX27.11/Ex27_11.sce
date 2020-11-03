//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = 4;        //(m/s)(Initial velocity of the body)
alpha = 90 - 30;    //(Degrees)(Angle, which the initial velocity of the body makes with the line of impact)
e = 0.5;      //(Coefficient of restitution)

//(a) Direction of the body after impact:
//Let theta = Angle, which the final velocity makes with the line of impact, and
//v = Final velocity of the body after impact.

//From law of conservation of momentum:

//v*sind(theta) = u*sind(alpha) = 3.464     -(1)

//From the law of collision of elastic bodies:
//v*cosd(theta) = 1                         -(2)

//(1)/(2):
theta = atand(3.464);     //(Degrees)
printf("Angle, which the final velocity makes with the line of impact = %.2f degrees\n",theta);

//(b) Velocity of the body after impact:
//Substituting the value of theta in equation (2):
v = 1/cosd(theta);     //(m/s)
printf("Final velocity of the body after impact = %.2f m/s",v);
