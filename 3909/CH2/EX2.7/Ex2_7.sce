clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.7
//calculation of intensity of light emerging out of Nicol B
//given data
theta=30; //angle (in degrees) made by Nicol C with Nicol A
I0=32; //intensity (in W/m^2) of unpolarized light
//calculation
I_t=I0/8*(sind(2*theta)); //intensity (in W/m^2) of light emerging out of Nicol B
printf("\nintensity of light emerging out of Nicol B is %d W/m^2",I_t)
