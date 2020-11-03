//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 16.8
//Determining the Electrical Energy of a Small Hydroelectric and the Water Velocity.

clc;
clear;
f=100;                 //Rate of passage of water through penstock in kg/s.
h=5;                   //Height of the reservoir.
eff_p=0.95;               //Efficiency of penstock.
Cp=0.47;               //The power coefficient.
eff_t=0.85;               //Efficiency of turbine.
eff_g=0.9;                //Efficiency of generator.
c=0.15;                //Cost of energy in dollar per Kwh.
t=30;                  //Time of operation of generator in days.
g=9.807;               //Gravity constant.
Eg=f*g*h*t*24*Cp*eff_p*eff_t*eff_g;//Calculating the energy generater per month.
Inc=Eg*c*10^-3;          //Calculating the aount of energy cost.
m=f;                     //Calculating the mass of water for a flow of 1sec.
PEp_in=m*g*h;               //Calculating the potential energy of penstock.
KEp_out=eff_p*PEp_in;          //Calculating the kinetic energy of penstock.
v=sqrt((2*KEp_out)/m)
printf("\n\t(a).The energy generated per month Eg is %0.3eJ",Eg);
printf("\n\t    The amount of cost is %0.3fdollars",Inc);
printf("\n\t(b).The input potential enegy of penstock KEp-in is %0.3fKg",PEp_in*10^-3);
printf("\n\t    The kinetic energy of the penstock iKEp-out is %0.3fKJ",KEp_out*10^-3);
printf("\n\t    The speed of the water v is %0.3fm/s",v);
