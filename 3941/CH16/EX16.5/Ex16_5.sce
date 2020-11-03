//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 16.5
//Determining the Power Density and the Available Power of a Wind Farm.

clc;
clear;
T=30;                  //Air temperature in degree.
h=320;                 //Elevation of wind farm in metre.
r=12;                  //Length of the blade in metre.
d=24;                  //Sweep diameter of the turbine in meter.
v=10;                  //Speed of the wind in m/sec.
g=9.8;                 //Gravity cinstant in m/s^2.
k=273;                     //Absolute temperature constant in kelvin;
Kg=29.3;                //Specific gas constant for air.
Pat=353;               //Standard atmosperic perseure in sea level in bar.
density=(Pat/(T+k))*(exp(-h/(Kg*(T+k))));//Calculating air density of wind from Eq 16.42.
rho=0.5*density*10^3;                            //Calculating wind density frp,m Eq 16.37.
As=%pi*r^2;                              //Calculating swep area pf blade from Eq 16.8.
P_wind=As*rho;                             //Calculating the wind power from Eq 16.37.
printf("\n\t(a).The air density of the wind  is %0.3fkg/m^3",density);
printf("\n\t(b).The wind density p is %0.2fW/m^3",rho);
printf("\n\t(c).The sweep area of the blade As is %0.3fm^2",As);
printf("\n\t    The wind power Pwind is %0.1fkw",P_wind*10^-3);
