clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.14 
//calculation of mean lifetime
//given data
T0=2.5*10^-8; //proper mean life (in s)
v_by_c=0.73; //speed of mason is 0.73 times speed of light
//calculation
T=T0/sqrt(1-v_by_c^2); //mean lifetime (in s)
printf("\nmean lifetime of mason is %1.1e s",T)
