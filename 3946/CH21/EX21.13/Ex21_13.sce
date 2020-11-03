//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
t = poly(0,"t");
//Given: 
theta = 18*t + 3*t^2 - 2*t^3;        //-(i)

//(i) Angular velocity and acceleration at start:
//Differentiating equation (i) w.r.t. t;
omega = derivat(theta);                  //-(ii)
x = omega;
//Substituting t = 0 in equation (ii):
omega = pol2str(omega);
t = 0;
omega = evstr(omega);
printf("Angular velocity at start = %.2f rad/s\n",omega);

//Differentiating (ii) w.r.t. t:
alpha = derivat(x);              //-(iii)
//Substituting t = 0 in equation (iii):
alpha = pol2str(alpha);
t = 0;
alpha = evstr(alpha);    //(rad/s^2)
printf("Angular acceleration at start = %.2f rad/s^2\n",alpha);

//(ii) Time when the particle reaches maimum angular velocity:
//Equating eqn (iii) to 0;
//6 - 12*t = 0
t = 6/12;        //(sec)
printf("Time when the particle reaches maximum angular velocity = %.2f sec\n",t);

//(iii)Maximum angular velocity of the particle:
//Substituting t = 0.5 in equation (ii).
omega_max = omega + (alpha * t) - alpha * (t)^2;   //(rad/sec)
printf("Maximum angular velocity of the particle = %.2f rad/s",omega_max);
