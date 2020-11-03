//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all

//Doing it by first method
mu_A = 0.3;              //(Coefficient of friction between block A and horizontal surface)
mu_B = 0.4;             //(Coefficient of friction between block B and the inclined surface)

WB = 100;             //(N)(Weight of the block)

alpha = 60;              //(degrees)(Angle of inclination)
//Let WA = Smallest weight of block A
//P = uA * WA;

phi = atand(mu_B);           //(degrees)

//Force that will hold the system in equilirium:
WA = (WB * tand(alpha - phi))/mu_A;          //(N)
printf("Force that will hold the system in equilirium = %.2f N",WA);   //The answers vary due to round off error
