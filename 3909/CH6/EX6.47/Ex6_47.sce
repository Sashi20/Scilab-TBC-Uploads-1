clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.47
//calculation of (a)change in mass (b)work done on the electron to change its velocity (c)accelerating potential in volts
//given data
m0=9.1*10^-31; //rest mass (in kg) of an electron
c=3*10^8; //speed (in m/s) of light
//calculation
v1=0.98*c; //initial speed (in m/s) of an electron
v2=0.99*c; //final speed (in m/s) of an electron
m1=m0/sqrt(1-v1^2/c^2); //initial mass (in kg)
m2=m0/sqrt(1-v2^2/c^2); //final mass (i kg)
del_m=m2-m1; //change in mass (in kg)
W=del_m*c^2*6.242*10^12; //work done (in MeV)
V=W*10^6; //accelerating potential (in volts)
printf("\n(a)change in mass is %2.2e kg",del_m)
printf("\n(b)work done is %1.3f MeV",W)
printf("\n(c)accelerting potential is %1.3e volts",V)
//answer (b) and (c) vary due to round off error
