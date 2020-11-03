//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 13: GRAVITATION
//EX13.6: A SATELLITE ORBIT
clear;
clc;
m=1000; //mass of satellite in kg
m_E=5.97*10^24; //mass of Earth in kg
G=6.67*10^-11; //universal gravitational constant in Nm^2/kg^2
r_orbit=3*10^5; //radius of orbit of satellite above Earth's surface in m
R_E=6.38*10^6; //radius of Earth in m
r=R_E+r_orbit; //net orbit radius in m
v=sqrt(G*m_E/r); //speed of satellite in m/s
T=(2*%pi*r)/v; //time period of revolution of satellite in sec
a_rad=v^2/r; //Radial acceleration of satellite in m/s^2
printf('(a)Speed of satellite : %f m/s',v); //answer vary due to roundoff error
printf('\n Time period of revolution of satellite: %f sec',T); //answer vary due to roundoff error
printf('\n Radial acceleration of satellite: %f m/s^2',a_rad); //answer vary due to roundoff error
E1=-(G*m_E*m)/R_E; //Initial total energy in J
E2=-(G*m_E*m)/(2*r); //Final total energy in J
W_required=E2-E1; //work done in J
printf('\n(b)Work done to put satellite in orbit: %e J',W_required); 
printf('\n(c)Energy required to escape satelite from its orbit: %e J ',-E2); 
