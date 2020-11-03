//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
theta = (4*%pi)/180;       //(rad)(Angular amplitude)
n = 24;                    //(Hz)(Frequency)
t = 60;                    //(s)(Time)
g = 9.8;                   //(m/s^2)(Accn due to Gravity)

//(a) Length of the pendulum:
//Let l = length of the pendulum.

//Time period for one oscillation:
T = 60/n;          //(s)

//Also:
//T = (2*%pi)*sqrt(l/g);
l = ((T^2)*g)/((2*%pi)^2);           //(m)
printf("Length of the pendulum = %.2f m\n",l);

//(b) Maximum linear acceleration of the bob:
//Displacement of the bob:
AC = 1.55 * theta;         //(m)

//Angular velocity:
omega = (2*%pi)/T;            //(rad/s)
amax = omega^2 * AC;           //(m/s^2)
printf("Maximum linear acceleration of the bob = %.2f m/s^2\n",amax);

//(c) Maximum linear velocity of the bob:
vmax = omega * AC;            //(m/s)
printf("Maximum linear velocity of the bob = %.2f m/s\n",vmax);

//(d) Maximum angular velocity of the bob:
omega_max = vmax/l;         //(rad/s)
printf("Maximum angular velocity of the bob = %.2f rad/s",omega_max);    //The answers vary due to round off error
