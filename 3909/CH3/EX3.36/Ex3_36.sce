clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.36
//calculation of wavelength separation
//given data
del_lambda=6; //wavelength (in Armstrong) of light
W=1; //assuming width to be 1 for simplicity of calculation
//calculation
lambdaa_plus_b_by_n=del_lambda; //formula for separation of wavelength
W_dash=10*W; //new width
dlambda_dash=lambdaa_plus_b_by_n/W_dash; //wavelength separation (in Armstrong)
printf("\nwavelength separation is %0.1f Armstrong",dlambda_dash)
