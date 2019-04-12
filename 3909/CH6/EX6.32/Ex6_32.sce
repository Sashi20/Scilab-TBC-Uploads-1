clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.32
//examination of twin paradox
//given data
c=3*10^8; //speed (in m/s) of light
v=0.8*c; //separation speed (in m/s) of A and B on onward trip
T0=1; //time period as per Doppler's effect (in year)
L_by_v=22.5; //time taken in outward trip (as given in ex 6.22)
//calculation
T=T0*sqrt((1+v/c)/(1-v/c)); //time period (in years) on onward trip
T_dash=T0*sqrt((1+v/c)/(1-v/c)); //time period (in years) on return trip
A=L_by_v/3; //signals A receive from B
A_dash=L_by_v*3; //signals A receive in return trip
B_yr=20+7.5+67.5; //age of sister (in years) A perceives
A_yr=20+22.5+22.5; //age of A (in years)
L0_by_v=30/0.8; //no of years B's brother needs to reach the star because the star is is 30 light years away
B1=(L0_by_v+30)/3; //no of signals B receives at the interval of three years for the totl duration
B2=7.5/(1/3); //for the remaining 7.5 years,signals received by B in years
A_age=20+22.5+22.5; //age of A (in years)
B_age=20+37.5+37.5; //age of B (in years)
printf("\nfrom the point of view of the travelling twin, age of A is %d years",A_yr)
printf("\nfrom the point of view of the travelling twin, age of B is %d years",B_yr)
printf("\nfrom the point of view of the earth bound twin, age of A is %d years",A_age)
printf("\nfrom the point of view of the earth bound twin, age of B is %d years",B_age)
printf("\nthus,the observations of both yield the same result in the domain of Doppler effect")
