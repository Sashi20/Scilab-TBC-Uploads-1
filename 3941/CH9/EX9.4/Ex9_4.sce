//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 9.4
//Finding the Values of the Snubber Circuit for a Thyristor Circuit.

clc;
clear;
Vs=200;                       //Input voltage in volts.
R=5;                          //Load Resistance in Ohm.
fs=2;                         //Supply frequency in kHz.
dv=100;                       //Change in voltage in V/µs.
Itd=100;                      //Discharge current in Ampere.
Rs=Vs/Itd;                    //Calculating the snubber resistance.
Cs=(0.632*R*Vs)/((dv*10^6)*(R+Rs)^2);//Calculating the snubber capacitance.
Ps=0.5*Cs*Vs^2*fs*10^3;              //Calculating the snubber loss.
Psr=Ps;                              //Calculating power rating of snuber resistnace.
printf("\n\t(a).The snubber resistance Rs is %0.0fΩ",Rs);
printf("\n\t    The snubber capacitance Cs is %0.3fµF",Cs*10^6);
printf("\n\t(b).The snubber loss Ps is %0.1fW",Ps);
printf("\n\t(c).The power rating of snubber  resistor is %0.1fW",Psr);
