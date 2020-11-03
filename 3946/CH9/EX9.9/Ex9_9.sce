//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
r = 2.5;         //(cm)(Mean radius of the screw)
p = .75;        //(cm)(Pitch of the thread)
mu = 0.12;       //(Coefficient of friction)
l = 60;         //(cm)(Length of the lever)
W = 2000;       //(N)(Weight to be raised)
phi = atand(mu);  //(degrees)

//Let P1 = Effort required at the end of the 60 cm long handle to raise the weight;
//alpha = Helix angle;
alpha = atand(p/(2*%pi*r));    //(degrees)

//Effort required at mean radius of the screw to raise the weight:
P = W * tand(alpha + phi);        //(N)

//Effort applied at the end of the lever:
P1 = (P * r)/(l);                 //(N)

printf("Effort applied at the end of the lever = %.2f N",P1);    //The answers vary due to round off error
