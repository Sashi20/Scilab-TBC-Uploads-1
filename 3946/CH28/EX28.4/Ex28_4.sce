//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 0.5;    //(kg)(Mass of body)
N = 2;      //(rev/s)(Angular rotation of the body)
r = 1.2;    //(m)(Radius of circle)
g = 9.8;    //(m/s^2)(Accn due to Gravity)

//(i) Tension in the string when the body is at the top of the circle:

//Angular velocity of the body:
omega = (2 * %pi * N);    //(rad/s)

T1 = m*omega^2*r - m*g;   //(N)
printf("Tension in the string when the body is at the top of the circle = %.2f N\n",T1);

//(ii) Tension in the string when the body is at the bottom of the circle:

T2 = m*omega^2*r + m*g;     //(N)
printf("Tension in the string when the body is at the bottom of the circle = %.2f N",T2);
