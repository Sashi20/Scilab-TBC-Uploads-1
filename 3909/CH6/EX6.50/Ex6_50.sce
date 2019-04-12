clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.50
//calculation of energy required to remove one neutron
//given data
BE_C12=7.68; //binding energy per nucleon (in Mev) for C12
BE_C13=7.47; //binding energy per nucleon (in Mev) for C13
//calculation
E=BE_C13*13-BE_C12*12; //energy (in Mev) required to remove one neutron
printf("\nenergy required to remove one neutron is %1.2f MeV",E)
