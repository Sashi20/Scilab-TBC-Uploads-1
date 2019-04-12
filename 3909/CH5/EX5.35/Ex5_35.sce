clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.35
//calculation of transmission probabilities
//given data
h=6.63*10^-34; //Planck's constant (in Js)
m=9.1*10^-31; //mass of an electron (in kg)
U0=5*1.6*10^-19; //barrier height 
a=5*10^-10; //width of barrier (in m)
E1=1*1.6*10^-19; //first energy of electron 
E2=2*1.6*10^-19 //second energy of electrons (in J)
//calculation
//for 1 eV electrons
alpha=sqrt(2*m*(U0-E1))/(h/(2*%pi))
T1=16*E1/U0*(1-E1/U0)*exp(-2*alpha*a); //transmission probability of 1 eV electrons
//for 2 eV electrons
alpha1=sqrt(2*m*(U0-E2))/(h/(2*%pi))
T2=16*E2/U0*(1-E2/U0)*exp(-2*alpha1*a); //transmission probability of 2 eV electrons
//when barrier width is doubled
a_dash=10*10^-10; //width of barrier when doubled (in m)
T1_dash=16*E1/U0*(1-E1/U0)*exp(-2*alpha*a_dash); //transmission probability of 1 eV electrons
T2_dash=16*E2/U0*(1-E2/U0)*exp(-2*alpha1*a_dash); //transmission probability of 2 eV electrons
//when barrier height is doubled
U0_dash=10*1.6*10^-19; //barrier height when doubled
T1_dashdash=16*E1/U0_dash*(1-E1/U0_dash)*exp(-2*alpha*a); //transmission probability of 1 eV electrons
T2_dashdash=16*E2/U0_dash*(1-E2/U0_dash)*exp(-2*alpha1*a); //transmission probability of 2 eV electrons
printf("\ntransmission probability of 1 eV electrons is %1.1e",T1)
printf("\ntransmission probability of 2 eV electrons is %1.1e",T2)
printf("\n(i)transmission probability of 1 eV electrons when barrier width is doubled is %1.1e",T1_dash)
printf("\ntransmission probability of 2 eV electrons when barrier width is doubled is %1.1e",T2_dash)
printf("\n(ii)transmission probability of 1 eV electrons when barrier height is doubled is %1.1e",T1_dashdash)
printf("\ntransmission probability of 2 eV electrons when barrier height is doubled is %1.1e",T2_dashdash)
//the first four answers vary due to round off error
//the last two answers given in the textbook are wrong and the variables are given wrong 
