clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.10
//calculation of distance and altitude covered by muons using (a)time dilation (b)length contraction
//given data
c=3*10^8; //speed (in m/s) of light
v=0.998*c; //speed (in m/s) of muons
T0=2*10^-6; //mean life (in s) of muons
h0=6000; //altitude (in m) 
//calculation
T=T0/sqrt(1-v^2/c^2); //average life (in s)
s=v*T; //distance covered by muons (in m)
h=h0*sqrt(1-v^2/c^2); //altitude covered by muons (in m)
H=9.5*sqrt(1-v^2/c^2); //altitude of 9.5km shall appear to muons as (in km)
printf("\ndistance covered by muons using (a)time dilation is %d m",s)
printf("\ndistance covered by muons using (b)length contraction is %d m",h)
printf("\naltitude of 9.5km shall appear to muons as %1.1f km",H)
//the first part of answer varies due to round off error
