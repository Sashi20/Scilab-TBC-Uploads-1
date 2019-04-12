clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.27
//calculation of numerical aperture and maximum acceptance angle
//given data
n1=1.5; //refractive index of core
delta=0.01; //relative refractive index of core-cladding
//calculation
NA=n1*sqrt(2*delta); //numerical aperture
i_m=asind(NA); //maximum acceptance angle
printf("\nnumerical aperture is %0.2f",NA)
printf("\nmaximum acceptance angle is %0.2f degrees",i_m)
