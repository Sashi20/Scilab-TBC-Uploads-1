clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.28
//calculation of energy and momentum for ground state and first excited state
//given data
a=1*10^-10; //side of cubical box (in m)
m=9.1*10^-31; //mass (in kg) of an electron
h=6.626*10^-34; //Planck's constant (in Js)
e=1.6*10^-19; //electronic charge (in C)
//for ground state
nx=1; //quantum number in x direction 
ny=1; //quantum number in y direction 
nz=1; //quantum number in z direction 
//for first excited state
nx1=2; //quantum number in x direction
ny1=1; //quantum number in y direction
nz1=1; //quantum number in z direction
//calculation
E_111=h^2/(8*m*a^2*e)*(nx^2+ny^2+nz^2); //energy of the particle (in eV) for ground state
P_111=sqrt(2*m*E_111*e); //momentum (in kg m/s) for ground state
E_211=h^2/(8*m*a^2*e)*(nx1^2+ny1^2+nz1^2); //energy of the particle (in eV) for first excited state
P_211=sqrt(2*m*E_211*e); //momentum (in kg m/s) for first excited state
printf('\nenergy of the particle for ground state is %d eV',E_111)
printf('\nmomentum for ground state is %1.2e kg m/s',P_111)
printf('\nenergy of the particle for first excited state is %d eV',E_211)
printf('\nmomentum for first excited state is %1.2e kg m/s',P_211)


