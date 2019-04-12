clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.6
//calculation of degree of polarization
I0=1; //assuming maximum intensity to be 1 for simplicity of calculation
I=75/100; //intensity change
I_max=I0; //maximum intensity
I_min=I0-I*I0; //minimum intensity
D_p=(I_max-I_min)/(I_max+I_min); //degree of polarization
printf("\ndegree of polarization is %d percent",D_p*100)
