//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
D = 5;          //(cm)(Outer diameter of the screw)
mu = 0.1;        //(Coefficient of friction)
phi = atand(mu);     //(Degrees)
l = 70;         //(cm)(Length of the lever)
W = 4000;       //(N)(Load to be lifted)
p = 1/2;        //(cm)(Pitch of the screw)
d = 5 - (2 * 0.5);        //(cm)(Internal diameter of the screw)
md = (D + d)/2;       //(cm)(Mean diameter of the screw)

//Let alpha = Helix angle
alpha = atand(p/(%pi * md));      //(Degrees)

//(i)Force required at the end of 70 cm long lever to lift the load:

//Force required to be applied at the mean radius to lift the load:
P = W * tand(alpha + phi);       //(N)

//Force required at the end of the lever:
P1 = (P * md/2)/l;        //(N)

//(ii)Force required at the end of 70 cm long lever to lower the load:

//Force required at the mean radius to lower the load:
P = W * tand(phi - alpha);       //(N)

//Force required at the end of the lever:
P2 = (P * md/2)/l;         //(N)

printf("Force required at the end of 70 cm long lever to lift the load = %.2f N\n",P1);    //The answers vary due to round off error
printf("Force required at the end of 70 cm long lever to lower the load = %.2f N",P2);    //The answers vary due to round off error
