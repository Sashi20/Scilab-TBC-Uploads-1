clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.9
//calculation of (a)time necessary according to S for the rocket to pass a particular point on the platform (b)rest length of the rocket (c)length D of the platform according to observer S_dash (d)time taken for oberver S to pass the entire length of the rocket, according to S_dash (e)to check whether the ends of the rocket simultaneously line up with the ends of the platform are simultaneous to S_dash
//given data
c=3*10^8; //speed (in m/s) of light
L=65; //length (in m) of platform
//calculation
D0=L; //length (in m) of platform
v=0.8*c; //speed (in m/s) of rocket
T0=L/v; //time (in s) necessary according to S for the rocket to pass a particular point on the platform
L0=L/sqrt(1-v^2/c^2); //proper length (in m)
D=D0*sqrt(1-v^2/c^2); //length of platform (in m) as appeared to S_dash
T_dash=L0/v; //time (in s) taken for oberver S to pass the entire length of the rocket, according to S_dash 
del_T_dash=(L0-D)/v; //time interval (in s) to pass the difference in the length of rocket and platform
printf("\n(a))time necessary according to S for the rocket to pass a particular point on the platform is %1.3f microsecond",T0*10^6)
printf("\n(b)rest length of the rocket is %d m",L0)
printf("\n(c)length D of the platform according to observer S_dash is %d m",D)
printf("\n(d)time taken for oberver S to pass the entire length of the rocket, according to S_dash is %1.2f microsecond",T_dash*10^6)
printf("\n(e)time interval (in s) to pass the difference in the length of rocket and platform is %1.2f microsecond",del_T_dash*10^6)
//the answer (a) varies due to round off error

