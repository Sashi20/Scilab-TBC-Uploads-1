//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
v1 = 9;         //(m/s)(Velocity)
y1 = 2;         //(m)(Distance from centre)

v2 = 4;         //(m/s)(Velocity)
y2 = 3;         //(m)(Distance from centre)

//Velocity of the particle:
//v = omega * sqrt(r^2 - y^2);

//Substituting the values in this equation:
//9 = omega * sqrt(r^2 - (2)^2)       -(1)
//4 = omega * sqrt(r^2 - (3)^2)       -(2)

//(1)/(2):
r = sqrt(665/65);       //(m)

//Time-period of particle:
//Substituting this value of r in equation (1):
omega = 9/sqrt(r^2 - (2)^2);     //(rad/s)

T = (2 * %pi)/omega;       //(s)
printf("Time-period of the particle = %.2f s",T);    //The answers vary due to round off error
