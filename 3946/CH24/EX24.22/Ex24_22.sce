//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 200;       //(kg)(Mass of the body)
u = 0;         //(Initial velocity)
alpha = 15;    //(Degrees)(Inclination of the plane)
v = 10;        //(m/s)(Final velocity)
mu = 0.1;       //(Coefficient of friction)

//Let s = Distance through which the body will slide.

//Force responsible for sliding down the body:
Fs = m * g * sind(alpha);      //(N)

//Normal reaction:
R = m * g * cosd(alpha);       //(N)

//Force of friction:
Fr = mu * R;                    //(N)

//Net force available to move the body:
F = Fs - Fr;                   //(N)


a = F/m;                      //(m/s^2)

//Using: v^2 = u^2 + 2 * a * s;
s = v^2/(2 * a);              //(m)
printf("Distance through which the body will slide = %.2f m",s);
