clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.23
//calculation of time difference 
//given data
c=3*10^8; //speed (in m/s) of light
del_x=1400*10^3; //nautical distance between Delhi and Mumbai
//calculation
v=0.9*c; //speed (in m/s) of travelling from Delhi to Mumbai
del_t_dash=(-v*del_x/c^2)/sqrt(1-v^2/c^2); //time difference in the reference frme of travelling from Delhi to Mumbai
printf("\ntime difference in the reference frme of travelling from Delhi to Mumbai is %1.1f ms",del_t_dash*10^3)
