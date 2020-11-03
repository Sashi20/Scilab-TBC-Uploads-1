//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 17 TEMPERATURE AND HEAT
//EXAMPLE 17.3 VOLUME CHANGE DUE TO TEMPERATURE CHANGE
clear;
clc;
V_0=200; //volume in cm^3
T1=20; // initial temperature in degree celsius
T2=100; //final temperature in degree celsius
deltaT=T2-T1;
Beta_Hg=18*10^-5; //coefficient of volume expansion of mercury in K^-1
Beta_glass=1.2*10^-5; //coefficient of volume expansion of glass in K^-1
V=V_0*deltaT*(Beta_Hg-Beta_glass);
disp(V,'Volume of mercury overflow in cm^3: '); //answer vary due to roundoff error

