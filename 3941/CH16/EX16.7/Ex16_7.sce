//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 16.7
//Determining the Potential Energy in the Tidal Wave.

clc;
clear;
R=1;                        //Radius of base of the lagoon in km.
H_high=25;                 //The maximum height of tide in metre.
H_low=15;                  //The lowest height of tide in metre.
g=9.807;                   //Gravitational constant in m/s^2.
Cp=0.35;                   //Power coefficient of the blade.
eff_t=0.9;                    //Efficiency of the turbine.
eff_g=0.95;                   //Efficiency of the generator.
rho=1000;                    //Density of sea water in kg//m^3.
del_H=(H_high-H_low)/2;       //Difference in height of the water.
vol=0.5*%pi*(R*10^3)^2*del_H; //Calculating the total volume of water.
PE=vol*g*rho*del_H;              //Calculating the potential energy.
Eout=PE*Cp*eff_t*eff_g;          //Calculatingelectrical energy of tidal system.
printf("\n\t(a).The change in height of water del_H is %0.0fm",del_H);
printf("\n\t    The total volume of water vol is %0.3em^2",vol);
printf("\n\t    The potential energy is %0.3eJ",PE);
printf("\n\t    The electrical energy of the tidal system Eout is %0.3eJ",Eout); 
