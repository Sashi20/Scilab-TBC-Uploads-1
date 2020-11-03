//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
r = 1;          //(m)(Radius of the wheel)
m = 40;         //(kg)(Mass of the wheel)
theta = 30;     //(Degrees)(Inclination of the plane)
g = 9.8;        //(m/s^2)(Accn due to Gravity)
u = 0;          //(Initial velocity)
s = 4;          //(m)(Distance)

//(i) Minimum value of coefficient of friction:
//k^2 = 0.5*r^2

//Minimum coefficient of friction:
//mu = [tand(theta)]/[(k^2 + r^2)/k^2];
mu = [tand(theta)] * [0.5/1.5];
printf("Minimum coefficient of friction = %.2f\n",mu);

//(ii) Velocity of the centre of the wheel after it has travelled a distance of 4 m:
//Let v = Velocity of the centre of the wheel.

//Acceleration of the whel when it rolls down the plane:
a = (g*sind(theta)) * (1/1.5);       //(m/s^2)

//Using: v^2 = u^2 + 2*a*s;
v = sqrt(u^2 + 2*a*s);             //(m/s)
printf("Velocity of the centre of the wheel after it has travelled a distance of 4 m = %.2f m/s",v);
