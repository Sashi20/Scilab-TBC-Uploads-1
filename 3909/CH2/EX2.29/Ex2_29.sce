clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.29
//calculation of angle of rotation
//given data
l=2; //length of tube (in dm)
c=15/100; //concentration of water (in gm/cc)
S_T_lambda=66.5; //specific rotation of sugar (in (decimeter^-1)(gm/cc)^-1)
//calculation
theta=S_T_lambda*l*c; //optical rotation (in degrees)
printf("\noptical rotation is %2.2f degrees",theta)
