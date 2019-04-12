clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.30
//calculation of concentration in a solution
//given data
//first case
theta=20; //rotation (in degrees)
l=1; //path length (in m)
c=20; //concentration of solution (in gm/litre)
//second case
theta_dash=33; //rotation (in degrees)
l_dash=0.5; //path length (in m)
//calculation
c_dash=(l*c*theta_dash)/(l_dash*theta); //concentration of solution (in gm/litre)
printf("\nconcentration of solution is %d gm/litre",c_dash)
