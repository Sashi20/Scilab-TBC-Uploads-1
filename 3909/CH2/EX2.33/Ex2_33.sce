clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.33
//calculation of strength of solution
//given data
theta=13; //optical rotation (in degrees)
S_T_lambda=65; //specific rotation (in degree/dm/(g/cc))
l=2; //length (in cm) of tube of sugar solution
//calculation
c=theta/(S_T_lambda*l); //strength of solution (in gm/cc)
printf("\nstrength of solution is %1.1f gm/cc",c)
