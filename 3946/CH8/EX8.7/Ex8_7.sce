//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
P1 = 200;            //(N)
alpha = 15;             //(degrees)
P2 = 230;            //(N)
beta = 20;             //(degrees)

//Resolving the forces at right angles to the plane:
//R1 = W * cosd(15);              -(1)

//Resolving the forces along the plane:
//200 = W * (u * cosd(15) + sind(15));      -(2)

//Resolving the forces at right angles to the plane:
//R2 = W * cosd(20);               -(3)

//Resolving the forces at right angles to the plane:
//230 = W * (u * cosd(20) + sind(20));     -(4)

//Coefficient of friction:
//Dividing (4) by (2):
mu = ((P1 * sind(beta)) - (P2 * sind(alpha)))/((P2 * cosd(alpha)) - (P1 * cosd(beta)));            
printf("Coefficient of friction = %.2f\n",mu);   //The answers vary due to round off error

//Weight of the body:
//Substituting the value of u in equation (2):
W = P1/(mu * cosd(alpha) + sind(alpha));
printf("Weight of the body = %.2f N",W);    //(The answers vary due to round off error)

