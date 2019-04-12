clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.36
//calculation of velocity of electron w.r.t laboratory observer when (a)electron is ejected in the x-direction and (b)it is ejected in the y-direction
//given data
//for x-direction
c=3*10^8; //speed (in m/s) of light
Vx_dash=0.8*c; //speed of electron (in m/s) in rest frame of the atom
v=0.3*c; //speed (in m/s) of radioactive atom w.r,t laboratory in x-direction
//for y-direction
Vx_dash_=0
Vy_dash=0.8*c; //speed of electron (in m/s) in rest frame of the atom
//calculation
Vx=(Vx_dash+v)/(1+(v*Vx_dash)/c^2); //velocity (in m/s) of electron w.r.t laboratory observer when electron is ejected in the x-direction 
Vy=(Vy_dash*sqrt(1-v^2/c^2))/(1+(v*Vx_dash_)/c^2); //velocity of electron w.r.t laboratory observer when electron is ejected in the y-direction 
Vx_dash1=0
Vx1=(Vx_dash1+v)/(1+(v*Vx_dash1)/c^2); //velocity (in m/s) in x-direction
V=sqrt(Vx1^2+Vy^2); //speed (in m/s) of electron
theta=atand(Vy/Vx1); //angle (in degree) made with x-axis
printf("\n(a)velocity of electron w.r.t laboratory observer when electron is ejected in the x-direction is %1.2f times the speed of light",Vx/c)
printf("\n(b)velocity of electron w.r.t laboratory observer when electron is ejected in the y-direction is %1.2f times the speed of light",Vy/c)
printf("\nvelocity of electron is %0.2f times the speed of light",V/c)
printf("\nangle made with x-axis is %2.1f degree",theta)
