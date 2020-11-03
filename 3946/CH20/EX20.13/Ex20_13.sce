//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
alpha = 30;     //(Degrees)(Angle of projection with the horizontal)
u1 = 100;       //(m/s)(Initial velocity of projection)
g = 9.8;       //(m/s^2)(Accn due to Gravity)

//Maximum height:
H = (u1^2 * (sind(alpha))^2)/(2*g);      //(m)

//Time taken:
t1 = (u1*sind(alpha))/g;                 //(s)   -(1)

//Considering the vertical motion of the bullet from the maximum height to the target due to gravitational acceleration only:
u = 0;          //(Initial velocity)
s = H + 80;     //(Total distance)

//Let t2 = Time taken by the bullet to reach the target from the maximum height.
//Using s = u*t2 + (1/2)*g*t2^2;
t2 = sqrt(s/((1/2)*g));     //(s)    -(2)

//Total time required:
T = t1 + t2;       //(s)

//Final velocity of the bullet in the vertical direction:
v = u + g*t2;         //(m/s)

//Horizontal component of the initial velocity:
vh = u1*cosd(alpha);   //(m/s)

//Actual velocity with which the bullet will strike the target:
V = sqrt(v^2 + vh^2);    //(m/s)
printf("Actual velocity with which the bullet will strike the target = %.2f m/s",V);
