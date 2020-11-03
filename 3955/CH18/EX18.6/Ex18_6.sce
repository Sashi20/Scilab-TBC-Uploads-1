//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 18: THERMAL PROPERTIES OF MATTER
//EX 18.6: MOLECULAR KINETIC ENERGY AND Vrms
clc;
clear;
T=300; //temperature of ideal gas molecule in kelvin
k=1.38*10^-23; //boltzman constant in J/K
Kavg_molecule=(3/2)*k*T; //Average translation kinetic energy of one molecule in J
n=1; //no. of moles of ideal gas
R=8.314; //universal gas constant in J/K.mol
Ktr=(3/2)*n*R*T; //average translation kinetic energy of 1 mole of ideal gas in J
M=32*10^-3; //Molar mass of oxygen molecule in kg/mol
v_rms=sqrt((3*R*T)/M); //rms speed of oxygen molecule in m/s (as calculated in second method in book: Vrms=sqrt(3RT/M))
printf('(a)Average translation kinetic energy of one molecule of ideal gas at T=300K: %e J',Kavg_molecule);
printf('\n(b)Average translation kinetic energy of one mole of ideal gas at T=300K: %f J',Ktr); //answer vary due to roundoff error
printf('\n(c)Average RMS speed of one molecule of oxygen gas at T=300K: %f m/s',v_rms); //answer vary due to roundoff error

