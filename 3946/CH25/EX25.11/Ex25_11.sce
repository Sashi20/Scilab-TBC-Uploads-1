//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
alpha1 = 30;     //(Degrees)(Inclination of first plane)
alpha2 = 20;     //(Degrees)(Inclination of second plane)
m1 = 10;       //(kg)(Mass of first body)
m2 = 6;        //(kg)(Mass of second body)
g = 9.8;       //(m/s^2)(Accn due to Gravity)

//Tension in the string:
T = [(m1*m2*g)*(sind(alpha1) + sind(alpha2))]/(m1 + m2);
printf("Tension in the string = %.2f N",T);    //THe answers vary due to round off error
