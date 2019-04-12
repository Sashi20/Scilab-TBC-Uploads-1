clc;clear;
//OS windows 7
//scilab 6.0.1
//example 7.8
//calculation of maximum radial field and duration of time the counter lasts
//given data
V0=1000; //voltage at which halogen and quenched GM works (in V)
r=0.2*10^-3; //radius (in m) of central wire
b=20*10^-3; //radius (in m) of outer cylinder
n=50; //number of weeks
l=10^9; //certified life of tube (in count)
h=30; //number of hours
s=60; //seconds
m=3000; //number of counts per minute
//calculation
a=r; //since field is maximum near central wire
E_max=V0/(r*log(b/a)); //maximum radial field (in V/m)
t=n*m*h*s; //counts each year
T=l/t; //life of counter
printf("\nmaximum radial field is %1.2e V/m",E_max)
printf("\ntime the counter lasts is %1.2f years",T)
