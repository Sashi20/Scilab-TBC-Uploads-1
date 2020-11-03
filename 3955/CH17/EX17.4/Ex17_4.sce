//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 17: TEMPERATURE AND HEAT
//EXAMPLE 17.4 THERMAL STRESS
clear;
clc;
A=20*10^-4; //Area in m^2
T1=17.2; //initial temperature in degree celsius
T2=22.3; //final temperature in degree celsius
deltaT=T2-T1; //temperature difference in degree celsius
Gamma_Al=7*10^10; //young's modulus of aluminium
alpha=2.4*10^-5; //coeffficient of linear expansion of aluminium
F_by_A=-Gamma_Al*alpha*deltaT; //magnitude of stress in N/m^2
F=F_by_A*A; //force in N (Force=stress*Area)
mprintf('Stress on cylinder in N/m^2: %e',F_by_A); //answer vary due to round off error
mprintf('\nForce on cylinder in newton: %e',F); //answer vary due to round off error

