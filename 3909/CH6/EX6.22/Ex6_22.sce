clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.22
//calculation of age of A and B when determined in (a)A's frame of reference (b)B's frame of reference
//given data
c=3*10^8; //speed (in m/s) of light
l0=30; //distance of star (in light years)
a=20; //age (in years) of A and B
//calculation
v=0.8*c; //speed (in m/s) of A
//in B's frame of reference
t=(2*l0*3*10^8)/v; //time (in years) spent in the journey
T=t*sqrt(1-v^2/c^2); //time (in years) spend by A 
bA=a+T; //age of A (in years)
bB=a+t; //age of B (in years)
//in A's frame of reference
L=l0*sqrt(1-v^2/c^2); //contracted length (in light years)
t_dash=(L*3*10^8)/v; //time (in years) taken in outward trip
T_dash=T/sqrt(1-v^2/c^2); //time dilation (in years)
aA=a+T; //age of A (in years)
aB=a+T_dash; //age of B (in years)
printf("\n(a)age of A when determined in Bs frame of reference is %d years",bA)
printf("\nage of B when determined in Bs frame of reference is %d years",bB)
printf("\n(b)age of A when determined in As frame of reference is %d years",aA)
printf("\nage of B when determined in As frame of reference is %d years",aB)
