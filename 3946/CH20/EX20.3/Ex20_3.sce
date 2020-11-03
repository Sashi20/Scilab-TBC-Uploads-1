//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
v = 55.56;    //(m/s)(Aeroplane velocity)
h = 1000;     //(m)(Height of plane)
u = 300;      //(m/s)(Velocity of shell)
g = 9.8;      //(m/s^2)(Accn due to Gravity)

//Inclination of the gun:
//Let alpha = Inclination of gun with the horizontal,
//t = Time taken by the shell to hit the plane.

//AB = 55.56*t;      -(1)

//and horizontal distance:
//AB = 300*cosd(alpha)*t;        -(2)
//Equating (1) and (2):
alpha = acosd(v/u);     //(Degrees)

printf("Inclination of gun with the horizontal = %.2f degrees\n",alpha);

//Vertical componnent of shell velocity:
uy = u*sind(alpha);     //(m/s)

//Vertical distance:(s = u*t + (1/2)*g*t^2)
//1000 = 295*t - 4.9*t^2;
//4.9*t^2 - 295*t + 1000 = 0;
a = 4.9;
b = -295;
c = 1000;
//Solving quadratic equation(taking lesser value since the shell can hit the plane twice, so least time is considered):
t = poly(0,"t");
p = a*t^2 + b*t + c;
t = roots(p);
printf("Time after firing the shell will hit the plane = %.2f s\n",t(2));    //The answers vary due to round off error

//Horizontal distance of the plane from the gun:
AB = v*t(2);          //(m)
printf("Horizontal distance of the plane from the gun = %.2f m",AB);    //The answers vary due to round off error
