clc;
clear;
KE=0.04*1.6*10^-19 //energy in J
m=1.675*10^-27 //mass of neutron in kg
h=6.63*10^-34 //Plancks constant in J-s
c=3*10^8 //velocity of light in m/s

//calculation
lambda=(h/sqrt(2*m*KE))/10^-9 //Wavelength in nm
v_g=h/(lambda*10^-9*m) //Group Velocity in m/s
v_p=(c^2)/v_g //Phase Velocity in m/s
E=(h*c)/(lambda*10^-9) //Energy of neutron in J

mprintf("The de-Broglie wavelength is = %1.3f nm\n",lambda)
mprintf("The group velocity is = %1.2e m/s\n",v_g)
mprintf("The phase velocity is = %1.2e m/s\n",v_p)
mprintf("The energy of the neutron is = %1.2e J",E)
