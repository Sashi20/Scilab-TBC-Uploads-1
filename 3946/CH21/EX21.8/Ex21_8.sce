//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
t = 10 - 0;    //(sec)(Time interval)
theta = 600*%pi;     //(rad)(Angular displacement)

//When time:
t1 = 7.5;     //(sec)
omega = 40*%pi;    //(rad/sec)
//(i) Value of  constant retardation:
//Let alpha = Constant retardation,
//omega0 =Initial angular velocity.

//Considering motion from 0 to 10 seconds;
//Angular displacement:
//600*pi = 10*omega0 - 50*alpha;      -(1)

//Considering motion of flywheel 0 to 7.5 seconds:
//Angular velocity:
//alpha = (omega0 - 40*pi)/7.5;       //(rad/s^2)    -(2)

//Substituting the value of alpha in equation (i):
omega0 = (theta - (t^2/2)*omega/t1)/(t - (t^2/2)/t1);      //(rad/sec)

//Substituting omega0 in equation (iii):
alpha = (omega0 - omega)/t1;           //(rad/sec^2)
printf("Constant retardation = %.2f rad/sec^2\n",alpha);

//(ii) Total time taken by the flywheel to come to rest:
omega0 = 100*%pi;        //(rad/sec)
omega = 0;               //(rad/sec)
alpha = 8*%pi;       //(rad/sec^2)

//Using: omega = omega0 + alpha*t;
t = omega0/alpha;        //(s)
printf("Total time taken by the flywheel to come to rest = %.2f sec\n",t);

//(iii)Total revolutions made till it comes to rest:
t = 12.5;       //(s)
theta = (omega0*t - (1/2)*alpha*t^2)/(2*%pi);    //(rev)
printf("Total revolutions made till it comes to rest = %.2f rev",theta);
