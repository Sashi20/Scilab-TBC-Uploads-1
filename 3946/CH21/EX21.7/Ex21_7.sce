//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
theta = %pi/2;     //(rad)(Angular displacement)
T = 120;      //(s)(Total time)
t1 = 40;      //(sec)(Time for acceleration)
t2 = 60;      //(sec)(Time for uniform velocity)
t3 = 20;      //(sec)(Time for retardation)

//(i) Angular acceleration of the bridge:
//alpha1 = Angular acceleration of the bridge,
//alpha2 = Angular retardation of the bridge.

//For first 40 sec:
omega1 = 0;     //(Initial angular velocity)
t1 = 40;    //(sec)(Time)
//omega = omega1 + alpha1*t1 = 40*alpha1;   -(1)

//theta1 = W0*t1 + (1/2)*alpha1*t1^2 = 800*alpha1;   -(2)

//For next 60 seconds:
t2 = 60;     //(s)
//theta2 = 2400*alpha1           -(iii)

//For last 20 seconds:
omega = 0;
t3 = 20;      //(s)
//alpha2 = 2*alpha1;

//Angular displacement:
//theta3 = 400*alpha1            -(iv)

//Total displacement:
//0.5*pi = theta1 + theta2 + theta3;
alpha1 = (0.5*%pi)/(3600);    //(rad/s^2)
printf("Angular acceleration of the bridge = %.2f * 10^(-3) rad/s^2\n",alpha1 * 1000);

//(ii)Maximum angular velocity of the bridge:
omega = 40*alpha1;              //(rad/s)
printf("Maximum angular velocity of the bridge = %.2f * 10^(-3) rad/s\n",omega*1000);

//(iii)Angular retardation of the bridge:
alpha2 = 2*alpha1;           //(rad/s^2)
printf("Angular retardation of the bridge = %.2f * 10^(-3) rad/s^2",alpha2*1000);
