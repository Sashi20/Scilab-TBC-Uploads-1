clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.39
//calculation of velocity of A relative to B
//given data
c=3*10^8; //speed (in m/s) of light
Vx=0.9*c; //velocity (in m/s) of particle A in the frame S
v=-0.8*c; //velocity (in m/s) of particle B moving in negative x-direction
//calculation
Vx_dash=(Vx-v)/(1-(v*Vx)/c^2); //velocity (in m/s) of A relative to B
printf("\nvelocity of A relative to B is %0.3f times the speed of light",Vx_dash/c)
if Vx_dash/c>0 then
    disp("velocity of A relative to B is along positive x-direction")
else
    disp("velocity of A relative to B is along negative x-direction")
end
