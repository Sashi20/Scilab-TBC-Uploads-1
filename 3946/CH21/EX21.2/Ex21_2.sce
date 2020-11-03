//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
omega0 = 1.5*%pi;    //(rad/sec)(Initial angular velocity)
omega = 3*%pi;       //(rad/sec)(Final angular velocity)
t = 30;          //(sec)

//(a) Angular acceleration of the wheel:
//Let alpha = Angular acceleration of the wheel
//Using W = W0 + alpha * t;
alpha = ((omega - omega0)/t);      //(rad/sec^2)
printf("Angular acceleration of the wheel = %.2f pi rad/sec^2\n",alpha/%pi);

//(b) No. of revolutions made by the wheel in 30 seconds:
//Using theta = W0*t + (1/2)*(alpha)*t^2;
theta = omega0*t + (1/2)*(alpha)*t^2;     //(rad)
rev = theta/(2*%pi);       //(rev)
printf("No. of revolutions made by the wheel in 30 seconds = %.2f rev",rev);
