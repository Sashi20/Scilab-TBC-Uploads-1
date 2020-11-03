//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 45;       //(kg)(Mass of first body)
m2 = 30;       //(kg)(Mass of second body)
g = 9.8;       //(m/s^2)(Accn due to Gravity)

//Acceleration of the heavier mass:
a = g * [(m1 - m2)/(m1 + m2)];      //(m/s^2)
printf("Acceleration of the heavier mass = %.2f m/s^2\n",a);

//Tension in the string:
T = [(2 * m1 * m2)/(m1 + m2)] * g;    //(N)
printf("Tension in the string = %.2f N",T);
