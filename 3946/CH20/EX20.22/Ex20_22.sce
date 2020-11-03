//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//Given: velocity of the particle at its greatest height = sqrt(2/5) * velocityat half of it greatest height.

//Let u = Initial velocity of projection,
//alpha = Angle of projection with the horizontal.

//Velocity of projectile at greatest height:
//v = u*cosd(alpha)    -(1)

//Half of greatest height:
//h = (1/2)*((u^2*sind(alpha)^2)/(2*g));

//Velocity of projectile at half of the greatest height:
//V = sqrt(u^2 - 2*g*h)    -(2)

//Substituting (1) and (2) in the given equation:
alpha = asind(sqrt(3/4));     //(Degrees)
printf("Angle of projection with the horizontal = %.2f degrees",alpha);
