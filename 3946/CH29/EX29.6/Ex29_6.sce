//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 2.5;    //(kg)(Mass of flyballs)
N = 75;     //(r.p.m.)(Angular frequency)
g = 9.8;    //(m/s^2)(Accn due to Gravity)

//Height of the governor:

//Angular velocity of the governor:
omega = (2*%pi*N)/60;     //(rad/s)

//Height of governor:
h = g/omega^2 * 1000;           //(mm)
printf("Height of governor = %.2f mm\n",h);    //The answers vary due to round off error

//(i) Speed of the governor when the balls rise by 20 mm:
//In this case height of governor,
h1 = (h - 20)/1000;     //(m)
omega = sqrt(g/h1);         //(rad/s)

//Speed of the governor:
N1 = (60 * omega)/(2*%pi);     //(r.p.m.)
printf("Speed of the governor when the balls rise by 20 mm = %.2f r.p.m.\n",N1);

//(ii) Speed of the governor when the balls fell by 20 mm:
//In this case height of governor,
h2 = (h + 20)/1000;     //(m)
omega = sqrt(g/h2);         //(rad/s)

//Speed of the governor:
N2 = (60 * omega)/(2*%pi);     //(r.p.m.)
printf("Speed of the governor when the balls fell by 20 mm = %.2f r.p.m.\n",N2);    //The answers vary due to round off error
