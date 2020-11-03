//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 16: SOUND AND HEARING
//EX 16.9: A BIRD SINGS IN A MEADOW
clc;
clear;
r1=1; //distances from sound source in m
r2=2;
I2_by_I1=(r1^2)/(r2^2); //ratio of intensities of sound wave (since I2/I1=r1^2/r2^2)
beta2_minus_beta1=10*log10(I2_by_I1); //Difference in intensity level in dB (B_diff=B2-B1)
printf('Difference in intensity level in dB: %f ',beta2_minus_beta1); //answer vary due to roundoff error
