//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
FAC = 100;    //(N)(Force along AC)
FBC = 200;    //(N)(Force along BC)
FAB = 100;    //(N)(Force along AB)
AB = 1;       //(m)
alpha = 45;   //(Degrees)

//Resolving the forces horizontally:
//100 - 100 * cosd(45) - P = 0
P = FAB - FAC*cosd(alpha);        //(N)
printf("Value of P = %.2f N\n",P);     //The answers vary due to round off error

//Resolving the forces vertically:
//200 - 100 * sin(45) - Q = 0
Q = FBC - (FAC * sind(alpha));      //(N)
printf("Value of Q = %.2f N\n",Q);    //The answers vary due to round off error

//Magnitude of the couple:
//Taking moments about A:
M = (-FBC * AB) + (-P * AB);         //(N-m)
printf("Magnitude of the couple = %.2f N-m",M);    //The answers vary due to round off error
