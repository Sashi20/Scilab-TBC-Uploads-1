//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 7.11
//Finding the Values of L and C for a Zero-Current-Switching Inverter.

clc;
clear;
PL=400;                       //Load power in milli watts.
Vo=4;                         //Load voltage in volts.
Vs=12;                        //Supply voltage in volts.
fmax=50;                      //Maximum frequency in KHz.
x=1.5;
T=1/(fmax*10^3);
Io=(PL*10^-3)/Vo;                  //Calculating output current.
C=T/(((%pi*Vs)/(x*Io))+(2*Vs/Io));//Calculating the value of capacitance.
L=(Vs/(x*Io))^2*C;                //Calculating the value of inductance.
printf("\n\tThe output current Io is %0.0fmA",Io*10^3);
printf("\n\tThe Capacitance C is %0.4fµF",C*10^6);
printf("\n\tThe inductance L is %0.2fµH",L*10^6);
