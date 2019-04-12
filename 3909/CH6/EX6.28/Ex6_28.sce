clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.28
//calculation of increase of time dilation
//given data
c=3*10^8; //speed (in m/s) of light
v0=1+5/100; //increase in speed is 5% (in m/s)
//calculation
del_T0=1; //assuming T0 to be 1 for simplicity of calculation
v=0.95*c; //speed (in m/s) of clock
del_T=del_T0/sqrt(1-v^2/c^2); //time dilation 
v_dash=v0*v; //increasing speed (in m/s)
del_T_dash=del_T0/sqrt(1-(v_dash/c)^2); //new time dilation
T=round((del_T_dash-del_T)/del_T*100); //percent increase in time dilation
printf("\npercent increase in time dilation is %d percent",T)
