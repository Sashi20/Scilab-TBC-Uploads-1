clc;clear;
//OS windows 7
//scilab 6.0.1
//example 7.12
//calculation of number of disintegrations per minute within the source
//given data
n=5.0*10^4; //number of alpha particles reaching the window of counter
A=3.0; //perpendicular area (in sq.cm) of window
d=7.0; //distance (in cm) of nuclide
//calculation
d_ohm=A/d^2; //solid angle subtended by the counter at the point source
N=(n*4*%pi)/d_ohm; //number of disintegrations per minute within the source (in counts/min)
printf("\nnumber of disintegrations per minute within the source is %1.3e counts/min",N)
