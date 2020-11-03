//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m2 = 10;       //(kg)(Mass of body A)
m1 = 5;        //(kg)(Mass of body B)
g = 9.8;       //(m/s^2)(Accn due to Gravity)

//Acceleration of body A:
a = m1/(m1 + m2) * g;        //(m/s^2)
printf("Acceleration of body A = %.2f m/s^2\n",a);

//Tension in the string:
T = (m1 * m2)/(m1 + m2) * g;    //(N)
printf("Tension in the string = %.2f N",T);    //The answers vary due to round off error
