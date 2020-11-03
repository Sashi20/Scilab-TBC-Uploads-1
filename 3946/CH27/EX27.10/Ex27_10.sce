//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
e = (0.5)^(1/3);     //(Coefficient of restitution)
g = 9.8;             //(m/s^2)(Accn due to Gravity)

//Let h0 = Height from which the ball is dropped,
//h1 = Height after first rebound,
//h2 = Height after second rebound,

//Velocity with which the ball impringes on the floor:
//u = sqrt(2*g*h0)           -(1)

//Velocity with which the ball rebounds first time:
//v = sqrt(2*g*h1)           -(2)

//Velocity with which the ball impringes after first rebound:
//u1 = v;                    -(3)

//Velocity with which the ball rebound second time:
//v1 = sqrt(2*g*h2)

//Velocity with which the ball impringes after second rebound,
//u2 = v1                   -(4)

//Velocity with which the ball rebounds third time:
u3 = sqrt(2*g*16);          //(m/s)    -(5)

//During first impact:
//v = e*u;
//sqrt(2*g*h1) = e * sqrt(2*g*h0)      -(6)

//During second impact:
//v1 = e*u1;
//sqrt(2*g*h1) = sqrt(2*g*h2)/e        -(7)

//During third impact:
//u3 = e*v1
//sqrt(2*g*16) = e * sqrt(2*h*h2)
//sqrt(2*g*h2) = sqrt(2*g*16)/e;       -(8)

//Substituting (8) in (7):
//sqrt(2*g*h1) = 4*sqrt(2*g)/e        -(9)
//Substituting (7) in (6)

h0 = ((4*sqrt(2*g)/e^3)^2)/(2*g);    //(m)
printf("Height from which the ball is dropped = %.2f m",h0);
