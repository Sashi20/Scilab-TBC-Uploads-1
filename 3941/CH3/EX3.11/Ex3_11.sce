//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 3.11
//Finding the Load Inductance to Limit the Amount of Ripple Current.

clc;
clear;
Vs=120;                       //Supply voltage in volts.
f=60;                         //Supply frequency in Hz.
R=500;                        //Resistace in Ohm.
RF=0.05;                      //Ripple factor.
L=sqrt((0.4714^2/RF^2)-1)*(R/(2*2*%pi*f));//Calculating the value of inductance.
printf("\n\tThe value of inductance required to limit the rms ripple current Iac to less than 5Percent of Idc, L is %0.2fH",L);
