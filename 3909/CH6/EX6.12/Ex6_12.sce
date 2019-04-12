clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.12
//calculation of speed of spacecraft
del_t=3600; //time (in s) of a clock on earth
del_t_dash=3599; //time (in s) of a clock on spacecraft
c=3*10^8; //speed of light (in m/s)
//calculation
v=c*sqrt(1-del_t_dash^2/del_t^2); //speed (in m/s) of spacecraft
printf("\nspeed of spacecraft is %1.0e m/s",v)
