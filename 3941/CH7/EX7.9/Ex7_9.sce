//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 7.9
//Finding the Optimum Values of C ’s and L’s for a Class E Inverter.

clc;
clear;
Vs=12;                      //Supply voltage in volts.
R=10;                       //Resistance in Ohm.
fs=25;                      //Switching frequency in KHz.
Q=7;                        //Quality factor.
a1=0.4001;a2=2.165;a3=0.3533;//Constant values calculated from mode 3 operation of the circuit in Fig 7.20;
ws=2*%pi*fs*10^3;           //Calculating the switching frequency in rad/sec.
Le=(a1*R)/ws;           //Calculating the effective inductance.
Ce=a2/(R*ws);            //Calculating the effective capacitance.
L=(Q*R)/(ws);               //Calculating the Inductace.
C=1/(((ws*L)-(a3*R))*ws);//Calculating the value of capacitance.
del=(R/2)*(sqrt(C/L));        //Calculating the damping factor.
fo=1/(2*%pi*sqrt(L*C));     //Calculating the resonant frequency.
printf("\n\t(a).The effective inductance Le is %0.2f micro Henry",Le*10^6);
printf("\n\t    The effective capacitance Ce is %0.2f micro Farad",Ce*10^6);
printf("\n\t    The  inductance L is %0.2f micro Henry",L*10^6);
printf("\n\t    The effective capacitance C is %0.4f micro Farad",C*10^6);
printf("\n\t    The damping factor del is %0.4f",del);
printf("\n\t    The resonant frequency fo is %0.2fkHz",fo*10^-3);
