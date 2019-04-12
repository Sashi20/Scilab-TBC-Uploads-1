clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.2
//calcuation of (a)coherent time, coherent length and Q value for sodium D1 line(b)coherent time, coherent length and Q value for sodium light of D1 and D2 line
//(a)for sodium D1 line
//given data
lambda=5890*10^-10; //wavelength (in m) of line D1
w=0.1*10^-10; //spectral width (in m)
c=3*10^8; //speed (in m/s) of light
//calculation
Q=round(lambda/w); //Q value
l_c=Q*lambda; //coherent length (in m)
tau_c=l_c/c; //coherent time (in sec)
//(b)for sodium D1 and D2 lines
//given data
lambda1=5890*10^-10; //wavelength (in m) of line D1
lambda2=5896*10^-10; //wavelength (in m) of line D2
//calculation
w_dash=lambda2-lambda1; //spectral width (in m)
Q_dash=((lambda1+lambda2)/2)/w_dash; //Q value
format(16)
lambda_dash=(lambda1+lambda2)/2; //average wavelength of D1 and D2 lines
lc=lambda_dash*Q_dash; //coherent length (in m)
tauc=lc/c; //coherent time (in s)
printf("\n(a)for sodium D1 line")
printf("\nQ value is %d",Q)
printf("\ncoherent length is %1.2f cm",l_c*10^2)
printf("\ncoherent time is %1.2e s",tau_c)
printf("\n(b)for sodium D1 and D2 lines")
printf("\nQ value is %3.2f",Q_dash)
printf("\ncoherent length is %1.2f micrometre",lc*10^6)
printf("\ncoherent time is %1.2e s",tauc)
//the answer for coherent time in (a) varies due to round off error
//the answers provided in the textbook for coherent length and coherent time in (b) are wrong
