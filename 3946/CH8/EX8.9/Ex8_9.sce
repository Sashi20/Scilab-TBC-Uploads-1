//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 1.5;          //(kN)(Load)
P1 = 2;           //(kN)(Horizontal effort)
P2 = 1.25;        //(kN)(Effort parallel to the inclined plane)

//Inclination of the plane:
//alpha = Inclination of the plane;
//phi = Angle of friction;

//P = W * tand(alpha + phi);
//alpha + phi = atand(2/1.5);        //(degrees)

//Also:
//P = W * (sind(alpha + phi)/cos(phi));
alpha_plus_phi = atand(P1/W);
phi = acosd(W*sind(alpha_plus_phi)/P2);         //(degrees)
alpha = atand(P1/W) - phi;        //(degrees)
printf("Inclination of the plane = %.2f degrees\n",alpha);    //The answers vary due to round off error

//Coefficient of friction:
mu = tand(phi);
printf("Coefficient of friction = %.2f",mu);
