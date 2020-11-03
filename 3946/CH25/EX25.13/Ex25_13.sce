//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
alpha1 = 30;    //(Degrees)(Inclination of first plane)
alpha2 = 15;    //(Degrees)(Inclination of second plane)
m1 = 15;        //(kg)(Mass of first body)
m2 = 5;         //(kg)(Mass of second body)
mu = 0.3;        //(Coefficient of friction)
g = 9.8;        //(m/s^2)(Accn due to Gravity)

//Let a = Acceleration of the system,
//T = Tension in the string.

//Normal reaction on the plane AB:
R1 = m1*g*cosd(alpha1);           //(N)

//Frictional force:
Fr1 = mu*R1;                       //(N)

//Normal reaction on the plane BC:
R2 = m2*g*cosd(alpha2);          //(N)

//Frictional force:
Fr2 = mu*R2;                      //(N)

//Considering the motion of body 1:
//Resultant force = 35.3 - T          -(1)

//Force acting on it = 15*a           -(2)

//Equating (1) and (2):
//35.3 - T = 15*a                    -(3)

//Considering the motion of body 2:
//Resultant force = T - 27           -(4)

//Force acting on this body = 5*a    -(5)

//Equating (4) and (5):
//T - 27 = 5*a                      -(6)

//Solving (3) and (6):
a = ((m1*g*sind(alpha1) - Fr1) - (m2*g*sind(alpha2) + Fr2))/(m1 + m2);        //(m/s^2)
printf("Acceleration of the system = %.2f m/s^2",a);
