clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.5
//calculation of angular position of first and second minima if observation point is far away
//given data
lambda=5890*10^-10; //wavelength (in m) of light
a=0.003*10^-3; //width of slit (in m)
n=1; //order of minima
n_dash=2; //order of minima
//calculation
theta_d1=n*lambda/a*180/%pi; //angular position of first minima (in degrees) if observation point is far away
theta_d2=n_dash*lambda/a*180/%pi; //angular position of second minima (in degrees) if observation point is far away
theta1=asind((n*lambda)/a); //angular position of first minima if the observation point is near
theta2=asind((n_dash*lambda)/a); //angular position of second minima if the observation point is near
printf("\nangular position of first minima if observation point is far away is %0.2f degrees",theta_d1)
printf("\nangular position of second minima if observation point is far away is %0.1f degrees",theta_d2)
//the answers vary due to round off error
