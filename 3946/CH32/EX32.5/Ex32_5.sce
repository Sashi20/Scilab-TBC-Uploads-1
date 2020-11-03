//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
M = 4000;     //(kg)(Mass of the automobile)
u = 12.5;    //(m/s)(Speed of the vehicle)
h = 1.2;     //(m)(Height of the centre of gravity of the vehicle above road surface)
d = 2.8;     //(m)(Distance between the two axles)
x1 = 1.6;    //(m)(Distance of c.g from the front axle)
x2 = 2.8 - 1.6;    //(m)(Distance of c.g. from the rear axle)

//(i) Distance covered by the automobile in coming to stop, if the brakes are applied on the rear pair of wheels only:

//Let s1 = Distance covered by the automobile in coming to stop.
//RF = Reaction at front pair of wheels,
//RR = Reation at rear pair of wheels.

//(RF + RR) = M*g = 39200 N         -(i)

//Kinetic energy of the automobile before the brakes are applied:
KE = (1/2)*M*u^2;       //(N-m)     -(ii)

//Force of friction in the rear pair of wheels:
//FR = 0.2*RR         (Given)

//Taking moments about the centre of gravity(G) of the automobile and equating the same:
//RF = 0.9*RR

//Substituting this value of RF in equation (i):
RR = 39200/1.9;     //(N)
FR = 0.2*RR;;       //(N)

//This resisting force stops the automobile in a distance of s1 metres. Therefore work done by the force:
//W = 4126*s1         -(iii)

//Equating (ii) and (iii):
s1 = KE/4126;      //(m)
printf("Distance covered by the automobile in coming to stop, if the brakes are applied on the rear pair of wheels only = %.2f m\n",s1);

//(ii) Distance covered by the automobile in coming to stop, if the brakes are applied on the front pair of wheels only:
//Let s2 = Distance covered by the automobile in coming to stop.

//Force of friction in the front pair of wheels:
//FF = 0.2*RF        (Given)

//Taking moments about the centre of gravity(G) of the automobile and equating the same:
//RR = 1.13*RF
//Substituting this value of RR in equation (i):
RF = 39200/2.13;    //(N)
FF = 0.2*RF;        //(N)

//This resisting force stops the automobile in a distance of s2 metres. Work done by the force:
//W = 3680*s2         (N-m)     (iv)

//Equating equations (ii) and (iv):
s2 = KE/3680;     //(m)
printf("Distance covered by the automobile in coming to stop, if the brakes are applied on the front pair of wheels only = %.2f m\n",s2);

//(iii) Distance covered by the automobile in coming to stop, if the brakes are applied on both pair of wheels:
//Let s3 = Distance covered by the automobile in coming to stop.

//Total force of friction:
//FF + FR = 0.2*(RF + RR) = 7840 N

//This total force of friction stops the automobile in a distance of s3 metres. Work done by the force:
//W = 7840*s3           (vi)

//Equating (ii) and (vi)
s3 = KE/7840;     //(m)
printf("Distance covered by the automobile in coming to stop, if the brakes are applied on both pair of wheels = %.2f m",s3);    //The answers vary due to round off error
