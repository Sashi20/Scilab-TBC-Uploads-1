clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.39
//calculation of probability of occupancy for a state whose energy is (a)0.1 eV above Fermi energy (b)0.1 eV below the Fermi energy (c)equal to Fermi energy
//given data
T=800; //temperature (in K)
k=1.38*10^-23; //Boltzmann constant in J/K
E_minus_EF=0.1*1.6*10^-19; //energy above Fermi level
EF_minus_E=-E_minus_EF; //energy below Fermi level
E1_minus_EF=0; //energy equal to Fermi energy
//calculation
a_f_FD=1/(exp(E_minus_EF/(k*T))+1)*100
b_f_FD=round(1/(exp(EF_minus_E/(k*T))+1)*100)
c_f_FD=1/(exp(E1_minus_EF/(k*T))+1)*100
printf("\nprobability of occupancy for a state whose energy is")
printf("\n(a)0.1 eV above Fermi energy is %d percent",a_f_FD)
printf("\n(b)0.1 eV below the Fermi energy is %d percent",b_f_FD)
printf("\n(c)equal to Fermi energy is %d percent",c_f_FD)
