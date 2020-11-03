//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 15;       //(kg)(Mass of body B)
m2 = 10;       //(kg)(Mass of body A)
alpha = 30;    //(Degrees)(Inclination of plane)
mu = 0.2;       //(Coefficient of friction)
g = 9.8;       //(m/s^2)(Accn due to Gravity)

//Let T = Tension in the string,
//a = Acceleration of the block A.

//Normal reaction:
R = m2*g*cosd(alpha);        //(N)

//Frictional force:
Fr = mu*R;                    //(N)

//Considering the motion of the block A:
//Resultant force = T - 68.3;           -(1)

//Force acting on it = 10*a;            -(2)

//Equating (1) and (2):
//T - 68.3 = 10*a
//2*T - 136.6 = 20*a                    -(3)

//Considering the motion of the body B:
//Resultant force = 147 - 2*T           -(4)

//Force acting on it = 7.5*a;           -(5)

//Equating equations (4) and (5):
//147 - 2*T = 7.5*a                     -(6)

a = 10.4/27.5;                         //(m/s^2)

//Velocity of the body A after 10 seconds, if the system starts from rest:
u = 0;        //(Initial velocity)
t = 10;       //(s)(Time)

v = u + a*t;       //(m/s)
printf("Velocity of the body A after 10 seconds, if the system starts from rest = %.2f m/s",v);    //The answers vary due to round off error
