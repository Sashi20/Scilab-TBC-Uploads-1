//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 15;        //(kg)(First mass)
m2 = 6;         //(kg)(Second mass)
m3 = 4;         //(kg)(Third mass)
g = 9.8;        //(m/s^2)(Accn due to Gravity)

//Let a15 = Acceleration of 15 kg mass,
//a6 = Acceleration of 6 kg mass,
//a4 = Acceleration of 4 kg mass.

a15 = g * [(m1 - (m2 + m3))/(m1 + m2 + m3)];       //(m/s^2)
a6 = g * [(m2 - m3)/(m2 + m3)];        //(m/s^2)
a4 = a6;                               //(m/s^2)

printf("Acceleration of 15 kg mass = %.2f m/s^2\n",a15);
printf("Acceleration of 6 kg mass = %.2f m/s^2\n",0);
printf("Acceleration of 4 kg mass = %.2f m/s^2",a4 + a6);
