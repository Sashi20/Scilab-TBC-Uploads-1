//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 16: SOUND AND HEARING
//EX 16.8: TEMPORARY/ PERMANENT HEARING LOSS
clc;
clear;
I_0=1*10^-12; //reference intensity in W/m^2
Beta=28; //first sound intensity level in dB
I_28_dB=I_0*10^(Beta/10); //sound intensity corresponding to 28dB in W/m^2 
Beta=92; //second sound intensity level in dB 
I_92_dB=I_0*10^(Beta/10); //sound intensity corresponding to 92dB in W/m^2 
printf('Sound intensity corresponding to 28dB: %e W/m^2',I_28_dB);
printf('\nSound intensity corresponding to 92dB: %e W/m^2',I_92_dB); //answer vary due to roundoff error

