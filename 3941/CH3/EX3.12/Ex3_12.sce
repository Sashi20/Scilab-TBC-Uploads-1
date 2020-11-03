//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 3.12
//Finding the Filter Capacitance to Limit the Amount of Output Ripple Voltage.

clc;
clear;
Vs=120;                    //Supply voltage in volts.
f=60;                      //Frequency in Hz.
R=500;                     //Resistance in Ohm.
RF=0.05;                   //Ripple factor.
Ce=(1/(4*f*R))*(1+(1/RF)); //Calculating the value of capacitance.
Vo_av=(sqrt(2)*Vs/2)*(2-(1/(R*2*f*Ce)));//Calculating the average output voltage
printf("\n\t(a).The value of filter capacitane Ce is %0.0fµF",Ce*10^6);
printf("\n\t(b).The average output voltage Vo(av) is %0.2fV",Vo_av);
//Book answer is wrong.
