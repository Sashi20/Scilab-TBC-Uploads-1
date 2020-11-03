//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = 15;        //(m/s)(Velocity of projection)
alpha = 25;    //(Degrees)(Angle of projection with the horizontal)
g = 9.8;       //(m/s^2)(Accn due to Gravity)

R = (u^2 * sind(2*alpha))/g;      //(m)(Horizontal range of the ball)
printf("Horizontal range of the ball = %.2f m",R);    //The answers vary due to round off error
