//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
h = 3.6;     //(m)(Height of wall)
OB = 4.8;    //(m)(Distance of the wall fom the point of projection)
BC = 3.6;    //(m)(Distance of strike point from the foot of the wall)
g = 9.8;     //(m/s^2)(Accn due to Gravity)

//Let u = Initial velocity of projection,
//alpha = Angle of projection.

//Range:
//4.8 + 3.6 = (u^2 * sind(2*alpha))/(2*g);
//u^2 = (8.4*g)/(2*sind(alpha)*cosd(alpha))     -(1)

//Equation of the path of trajectory:
//3.6 = 4.8*tand(alpha) - (g*(4.8)^2)/(2*u^2*cosd(alpha)^2);
//Substituting u^2 in equation (1):
alpha = atand(h/(OB-2.74));      //(Degrees)

//Substituting alpha in equation (1):
u = sqrt((4.2 * g)/(sind(alpha)*cosd(alpha)));   //(m/s)

printf("Least initial velocity = %.2f m/s",u);
