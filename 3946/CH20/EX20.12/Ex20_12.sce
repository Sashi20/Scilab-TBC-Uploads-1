//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
h = 150;     //(m)(Height of the cliff)
u = 180;     //(m/s)(Velocity of projection)
alpha = 30;  //(Degrees)(Angle of projection with the horizontal)
g = 9.8;     //(m/s^2)(Accn due to Gravity)

//1. The greatest elevation above the ground reached by the projectile:
H = (u^2 * (sind(alpha)^2))/(2*g);    //(m)

//Greatest elevation above the ground reached by the projectile:
s = H + h;         //(m)
printf("Greatest elevation above the ground reached by the projectile = %.2f m\n",s);    //The answers vary due to round off error

//2. The horizontal distance from the gun to the point, where the projectile strikes the ground:

//Time taken by the projectile to reach the maximum height:
t1 = (u * sind(alpha))/g;      //(s)

//t2 = Time taken by the projectile to reach the ground from the maximum height.
//Vertical distance: ( s = u*t + (1/2)*g*t^2 )

t2 = sqrt(s/((1/2)*g));     //(s)

//Total time:
t = t1 + t2;       //(s)

//Horizontal distance:
R = (180 * cosd(30)) * t;     //(km)
printf("Horizontal distance from the gun to the point, where the projectile strikes the ground = %.2f km",R/1000);
