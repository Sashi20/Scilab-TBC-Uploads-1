//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 5.3
//Finding the Load Inductance to Limit the Load Ripple Current.

clc;
clear;
R=0.25;                        //Load resistance in Ohms.
Vs=550;                       //Input voltage in Volts.
E=0;                          //Battery voltage in Volts.
Ia=200;                       //Average load current in Amps.
f=250;                        //Chopping frequency in HZ.
T=1/f; 
del_i=Ia*0.1;
//Differentiating del_i with respect to k and equate it to zero to obtain the value of k.
k=0.5;                        //Duty cycle.
L=(Vs*(1-k)*k*T)/del_i;       //Calculating the value of inductance.
printf("\n\tThe required value of inductance L is %0.1fmH",L*10^3);;
