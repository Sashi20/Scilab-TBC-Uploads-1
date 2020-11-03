//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
r = 200;     //(m)(Radius of the tack)
v = 25;      //(m/s)(Speed of the car)
g = 9.8;     //(m/s^2)(Accn due to Gravity)

//Let theta = Angle of the bank.
//tand(theta) = v^2/(g*r);
theta = atand(v^2/(g*r));    //(Degrees)
printf("Angle of the bank = %.2f degrees",theta);    //The answers vary due to round off error
