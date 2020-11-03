//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
vA = 5;     //(m/s)(Velocity of A)
OA = 2.6;   //(cm)
OC = 5.4;   //(cm)

//vC/vA = OC/OA;
vC = vA * (OC/OA);     //(m/s)
printf("Velocity of C = %.2f m/s",vC);    //The answers vary due to round off error
