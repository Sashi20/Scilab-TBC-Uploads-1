clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.29
//calculation of numerical aperture and angle of acceptance
//given data
n1=1.50; //refractive index of the core
n2=1.47; //refractive index of the cladding
//calculation
NA=(sqrt(n1^2- n2^2)); //numerical aperture
i_m=asind(NA); //acceptance angle (in degrees)
printf("\nnumerical aperture is %0.2f",NA)
printf("\nacceptance angle is %0.2f degrees",i_m)
//the answers vary due to round off error
