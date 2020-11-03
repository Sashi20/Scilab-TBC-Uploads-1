//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 0.6;      //(m)(Length of cord)
m = 2;        //(kg)(Mass of bob)
a = 3;        //(m/s^2)(Acceleration)
g = 9.8;      //(m/s^2)(Accn due to Gravity)

//Number of oscillations made by the bob per second:
//Time period for one oscillation:
t = (2*%pi)*sqrt(l/g);     //(s)

//No. of oscillations made by the bob per second:
n = 1/t;                   //(Hz)
printf("No. of oscillations made by the bob per second = %.2f Hz\n",n);    //The answers vary due to round off error

//Angle, which the cord will make with the vertical:
//Let theta = Angle which the cord will make with the vertical.

//Weight of the bob:
w = m*g;                    //(N)

//Inertial force acting on the bob:
IF = m*a;                   //(N)

theta = atand(IF/w);        //(Degrees)

//Tension in the cord:
T = sqrt(w^2 + IF^2);       //(N)
printf("Tension in the cord = %.2f N",T);
