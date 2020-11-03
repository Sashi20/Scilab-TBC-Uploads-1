//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
h0 = 1;     //(m)(Height from which the ball is dropped)
h1 = 0.81;  //(m)(Height to which the ball rose after first bounce)
g = 9.8;    //(m/s^2)(Accn due to Gravity)

//(a) Coefficient of restitution:
//Velocity with which the ball impringes on the floor:
u = sqrt(2*g*h0);       //(m/s)       -(1)

//Velocity with which the ball rebounds:
v = sqrt(2*g*h1);       //(m/s)       -(2)

//v = e*u;
e = v/u;
printf("Coefficient of restituion = %.2f\n",e);

//(b) Expected height after the second bounce:
//Let h2 = Expected height after the second bounce.

//Velocity with which the ball impringes second time:
u = v;                 //(m/s)

//Velocity, with which the ball rebounds:
//v = sqrt(2*g*h2);      //(m/s)

//Again, v = e*u
h2 = (e*u)^2/(2*g);      //(m)
printf("Expected height after the second bounce = %.2f m",h2);    //The answers vary due to round off error
