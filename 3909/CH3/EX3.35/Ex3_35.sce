clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.35
//calculation of minimum wavelength separation
//given data
lambda1=5890; //wavelength (in Armstrong) of light
lambda2=5896; //another wavelength (in Armstrong) of light
W=3; //width of grating (in cm)
W_dash=0.3; //new width of grating (in cm)
//calculation
a_plus_b=1; //assuming for simplicity of calculation
N_dash=(W_dash*a_plus_b)/(W*a_plus_b); //number of lines per cm
dlambda=lambda2-lambda1; //separation of wavelengths (in m)
lambda_by_n=dlambda; //formula of separation of wavelengths
dlambda_dash=lambda_by_n/N_dash; //minimum wavelength separation (in Armstrong)
printf("\nminimum wavelength separation is %d Armstrong",dlambda_dash)
