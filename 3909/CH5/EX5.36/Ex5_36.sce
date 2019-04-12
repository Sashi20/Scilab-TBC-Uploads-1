clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.36
//calculation of electron density of the metal for which the Fermi energy is 4.72 eV
//given data
EF1=2.14; //Fermi energy of potassium (in eV)
EF2=4.72; //Fermi energy of another metal (in eV)
n_e1=1.4*10^28; //electron density (per m^3) of potassium
//calculation
n_e2=n_e1*(EF2/EF1)^(3/2); //electron density (per m^3) of the metal
printf("\nelectron density of the metal is %1.2e m^-3",n_e2)
//theanswers vary due to round off error
