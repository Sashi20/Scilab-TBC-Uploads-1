//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m2 = 150;     //(kg)(Mass of the body)
alpha = 10;   //(Degrees)(Inclination of the plane)
m1 = 80;      //(kg)(Mass of the man)
mu = 0.2;      //(Coefficient of friction)
g = 9.8;      //(m/s^2)(Accn due to Gravity)

//(i)Tension in the rope:
T = [(m1*m2*g)*(1 + sind(alpha) + mu*cosd(alpha))]/(m1 + m2);       //(N)
printf("Tension in the rope = %.2f N\n",T);    //The answers vary due to round off error

//(ii)Acceleration, with which the body moves up the plane:
a = [g * (m1 - m2*sind(alpha) - mu*m2*cosd(alpha))]/(m1 + m2);        //(m/s^2)
printf("Acceleration, with which the body moves up the plane = %.2f m/s^2\n",a);

//(iii)Distance moved by the body in 4 sec starting from rest:
u = 0;          //(Initial velocity)
t = 4;          //(s)(Time)
a = 1.04;       //(m/s^2)(Acceleration)

//Distance moved by the body:
s = u*t + (1/2)*a*t^2;         //(m)
printf("Distance moved by the body in 4 sec starting from rest = %.2f m",s);
