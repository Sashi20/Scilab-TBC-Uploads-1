//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all

//For first 4 seconds:
omega0 = 20*%pi;     //(rad/s)(Initial angular velocity)
omega = 36*%pi;      //(rad/s)(Final angular velocity)
t1 = 4;      //(sec)(Time taken during constant accelration)
t2 = 8;      //(sec)(Time taken during uniform angular velocity)
theta = 800*%pi;   //(rad)(Total angular displacement)

//Let alpha = Angular acceleration of the shaft.
//Using W = W0 + alpha*t1;
alpha = (omega - omega0)/t1;     //(rad/s^2)      -(1)

//Angular displacement:
theta1 = omega0*t1 + (1/2)*alpha*t1^2;    //(rad)    -(2)

//For the next 8 seconds:
omega0 = 36*%pi;     //(rad/s)(Initial velocity)
alpha = 4*%pi;   //(rad/s^2)(Angular acceleration)

omega = omega0 + alpha*t2;     //(rad/s)      -(3)
theta2 = omega0*t2 + (1/2)*(alpha)*(t2^2);    //(rad)   -(4)

//For constant angular velocity of 68*pi rad/s:
theta3 = theta - theta1 - theta2;         //(rad)

//Time taken:
t3 = theta3/(68*%pi);         //(s)

//Total time to complete 400 revolution or 800*pi rad:
T = t1 + t2 + t3;    //(s)
printf("Total time to complete 400 revolution or 800*pi rad = %.2f sec",T);
