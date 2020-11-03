//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 10;     //(kg)(Mass of the body)
u = 20;     //(m/s)(Initial velocity)
v = 0;      //(Final velocity)
g = 9.8;    //(m/s^2)(Accn due to Gravity)

//(i) Force which will stop the body in 2 seconds:
t = 2;      //(s)(Time)
//Let a = Constant retardation.
//Using: v = u - a*t;
a1 = u/t;   //(m/s^2)

//Since body is falling under gravity:
a = g + a1;   //(m/s^2)

//Force applied to stop the body:
F = m * a;    //(N)
printf("Force applied to stop the body = %.2f N\n",F);

//(ii)Force which will stop the body in 2 metres:
//Using: v^2 = u^2 - 2 * a2 * s;
s = 2;       //(m)
a2 = u^2/(2 * s);            //(m/s^2)

//Since body is falling under gravity:
a = g + a2;   //(m/s^2)

//Force required to stop the body:
F = m * a;    //(N)
printf("Force required to stop the body = %.2f N",F);
