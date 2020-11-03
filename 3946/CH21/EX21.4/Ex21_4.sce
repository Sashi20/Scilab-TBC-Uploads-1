//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
omega0 = 0;     //(Initial angular velocity)
alpha1 = 0.5;    //(rad/s^2)(Acceleration)
t1 = 120;        //(s)(Time)

omega = (omega0 + alpha1 * t1)/(2*%pi) * 60;     //(r.p.m.)
printf("Angulae speed at the end of 2 minutes = %.2f r.p.m.\n",omega);    //The answers vary due to round off error

//Let t2 = Time in which the pulley will come to rest.
omega0 = 60;    //(rad/sec)(Initial angular velocity)
omega = 0;      //(Final angular velocity)
alpha2 = -0.3;     //(rad/s^2)(Retardation)
t2 = -omega0/alpha2;     //(sec)
printf("Time in which the pulley will come to rest = %.2f sec",t2);
