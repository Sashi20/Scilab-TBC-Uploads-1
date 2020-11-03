//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
M = 1000;   //(kg)(Mass of the car)
d = 2.25;   //(m)(Distance between the centre of wheel)
x1 = 1.25;  //(m)(Distance of c.g. of the car from front wheel)
h = 0.5;    //(m)(Height of c.g. of the vehicle above the road)
mu = 0.35;   //(Coefficient of friction)
g = 9.8;    //(m/s^2)(Accn due to Gravity)

//(i) Maximum inclination on which the car can climb when it is driven by the rear pair of wheels only:
//Let RF = Reaction at the front wheel,
//RR = Reaction at the rear wheel, and
//alpha = Maximum angle of inclination which the car can climb.

//RF + RR = 9800*cosd(alpha)

//Force of friction acts on the rear pair of wheels:
//FR = u*RR = 0.35*RR             -(i)

//Resolving the forces along the plane:
//FR = M*g*sind(alpha) = 9800*sind(alpha)    -(ii)

//Equating (i) and (ii):
//RR = 28000*sind(alpha)
//RF = 9800*cosd(alpha) - 28000*sind(alpha)

//Taking moments about the centre of gravity(G) of the car and equating the same:
alpha = atand(0.35/1.94);     //(Degrees)
printf("Maximum angle of inclination which the car can climb = %.2f degrees\n",alpha);

//(ii) Maximum inclination on which the car can climb when it is driven by the front pair of wheels only:
//Force of friction at the front pair of wheels:
//FF = 0.35*RF                               -(iii)

//Resolving the forces along the plane:
//FF = M*g*sind(alpha) = 9800*sind(alpha)    -(iv)

//Equating (iii) and (iv):
//RF = 28000*sind(alpha)
//RR = 9800*cosd(alpha) - 28000*sind(alpha)

//Taking moments about the centre of gravity (G) of the car and equating the same:
alpha = atand(0.35/2.425);      //(Degrees)
printf("Maximum inclination on which the car can climb when it is driven by the front pair of wheels only = %.2f degrees",alpha);
