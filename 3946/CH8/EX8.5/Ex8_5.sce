//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 500;                  //(N)(Weight of the body)
alpha = 25;                   //(degrees)(Angle at which plane is inclined)
phi = 20;                   //(degrees)(Angle of friction)
//Minimum value of P:
//For the minimum value of P, the body is at the point of sliding downwards:
P1 = W * (sind(alpha - phi)/cosd(phi));       //(N)

//Maximum value of P:
//For the maximum value of P, the body is sliding upwards:
P2 = W * (sind(alpha + phi)/cosd(phi));       //(N)

printf("Minimum value of P = %.2f N\n",P1);    //The answers vary due to round off error
printf("Maximum value of P = %.2f N",P2);
