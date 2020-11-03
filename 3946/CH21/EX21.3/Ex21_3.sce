//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
omega0 = 6*%pi;     //(rad/sec)(Initial angular velocity)
omega = 4*%pi;      //(rad/sec)(Final angular velocity)
t = 20;         //(sec)(Time)

//Revolutions of the wheel, before it stops:
//Let alpha = Uniform angular acceleration,
//theta = Angular displacement of the flywheel before coming to rest.

//Using W = W0 + alpha * t;
alpha = (omega - omega0)/t;     //(rad/sec^2)

//Using W^2 = W0^2 + 2*(alpha)*theta
theta = omega0^2/(2*alpha);
rev = theta/(2*%pi);    //(rev)
printf("Revolutions of the wheel, before it stops = %.2f rev\n",abs(rev));

//Time in which the wheel will come to rest:
//Using W = W0 + alpha * t;
omega = 0;      //(Final velocity)
t = (omega - omega0)/alpha;       //(sec)
printf("Time in which the wheel will come to rest = %.2f min",t/60);
