clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.40
//calculation of velocity of beta particles in lab frame
//given data
c=3*10^8; //speed (in m/s) of light
v=0.2*c; //speed (in m/s) of a radioactive nucleus
Vx_dash=0; //speed (in m/s) inn x-direction
Vy_dash=0.6*c; //speed (in m/s) of beta particle relative to the nucleus
//calculation
Vx=(Vx_dash+v)/(1+(v*Vx_dash)/c^2); //component Vx in the lab frame
Vy=(Vy_dash*sqrt(1-v^2/c^2))/(1+(v*Vx_dash)/c^2); //component Vy in the lab frame
V=sqrt(Vx^2+Vy^2); //magnitude of resultant velocity (in m/s)
theta=atand(Vy/Vx); //angle (in degree) made by beta particle with the direction of the nucleus
printf("\nvelocity of beta particles in lab frame is %1.2f times the speed of light",V/c)
printf("\nangle made by beta particle with the direction of the nucleus is %2.1f degrees",theta)
//the answers vary due to round off error
