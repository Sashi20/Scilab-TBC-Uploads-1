//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
Beta = atand(5/12);     //(Degrees)
u = 200;       //(m/s)(Velocity of projection with the horizontal)
alpha = 30;          //(Degrees)(Angle of projection)
g = 9.8;      //(m/s^2)(Accn due to Gravity)

//(a) Range of the plane, when the shot is fired up the plane:
R1 = (u^2)/(g*cosd(Beta)^2) * [sind(2*alpha - Beta) - sind(Beta)];       //(m)
printf("Range of the plane, when the shot is fired up the plane = %.2f m\n",R1);    //The answers vary due to round off error

//(b) Range of the plane, when the shot is fired down the plane:
R2 = (u^2)/(g*cosd(Beta)^2) * [sind(2*alpha + Beta) + sind(Beta)];       //(m)
printf("Range of the plane, when the shot is fired down the plan = %.2f m",R2);    //The answers vary due to round off error
