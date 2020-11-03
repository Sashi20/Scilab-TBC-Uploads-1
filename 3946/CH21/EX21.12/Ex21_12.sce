//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
t = poly(0,"t");
//Given: 
theta = 2*t^3 + 0.5;        //-(i)
x = theta;
//Angular displacement after 2 seconds:
//Substituting t = 2 in equation (i):
theta = pol2str(theta);
t = 2;
theta = evstr(theta);    //(rad)
printf("Angular displacement after 2 seconds = %.2f rad\n",theta);

//Angular velocity after 2 seconds:
//Differentiating eqn (i) w.r.t. t;
omega = derivat(x);                   //-(ii)
y = omega;
//Substituting t = 2 in equation (ii):
omega = pol2str(omega);
t = 2;
omega = evstr(omega);       //(rad/sec)
printf("Angular velocity after 2 seconds = %.2f rad/sec\n",omega);

//Angular acceleration after 2 seconds:
//Differentiating eqn (ii) w.r.t. t;
alpha = derivat(y);                //-(iii)
//Substituting t = 2 in eqn (iii):
alpha = pol2str(alpha);
t = 2;
alpha = evstr(alpha);     //(rad/sec^2)
printf("Angular acceleration after 2 seconds = %.2f rad/sec^2",alpha);
