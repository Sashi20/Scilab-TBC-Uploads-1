clc;
clear;
KE=10*1.6*10^-19 //energy in J
m=9.1*10^-31 //mass in kg
h=6.63*10^-34 //Plancks constant in J-s
m_h=2*10^-3 //molecular weight of hydrogen in kg
a=6.023*10^23 //Avogadros constant in mol^-1
v=2200 //velocity in m/s
m_g=45*10^-3 //mass of golf ball in kg]
v_g=22 //velocity of golf ball in m/s

//calculation
//case (a)
lambda=((h/sqrt(2*m*KE))/10^-9) //converting from m to nm by dividing by 10^-9 
mprintf("The de-Broglie wavelength is = %1.3f nm\n",lambda) //The answer varies due to round off error.

//case (b)
m=m_h/a //mass in kg
lambda=((h/(m*v))/10^-9) //converting from m to nm by dividing by 10^-9 
mprintf("The de-Broglie wavelength is = %1.3f nm \n",lambda) 

lambda1=h/(m_g*v_g) //Wavelength in m 
mprintf("The de-Broglie wavelength of the golf ball is = %1.1e m",lambda1)
