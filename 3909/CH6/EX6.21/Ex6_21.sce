clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.21
//calculation of space and time interval in S_dash frame
//given data
del_x=3*10^3; //distance (in m) apart of two sources of light A and B
c=3*10^8; //speed (in m/s) of light
t1=1; //assuming t to be 1 for simplicity of calculation
//calculation
t2=t1; //since light from A and B flashes simultaneously
del_t=t2-t1; //difference between the time flashed by A and B
v=c/3; //velocity (in m/s) of observer
alpha=1/sqrt(1-v^2/c^2)
del_x_dash=alpha*del_x; //space interval in S_dash frame (in m)
del_t_dash=-alpha*v*del_x/c^2; //time interval (in s)
printf("\nspace interval in S_dash frame is %1.2f km",del_x_dash*10^-3)
printf("\ntime interval is %1.2e s",del_t_dash)
//the answers vary due to round off error
