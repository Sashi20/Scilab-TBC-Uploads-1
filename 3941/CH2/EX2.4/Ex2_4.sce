//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example 2.4
//Finding the peak Current and energy loss in an RC Circuit.

clc;
clear;
Vc0=220;               //Intial voltage of the capacitor in Volts.
R=44;                  //Resistance in Ohm.
C=0.1;                 //Capacitance in Micro Farad
Ip=Vc0/R;              //Calculating the peak diode current.
W=0.5*C*10^-6*Vc0^2;   //Calculating the energy dissipated.
printf("\n\t(a) The Peak diode current Ip is %iA",Ip);
printf("\n\t(b) The Energy dissipated W is %0.2fmJ",W*10^3);
t=2;                    //Time in Micro second;
Vc=Vc0*exp(-t/(R*C));   //Calculating the value of capacitor voltage.
printf("\n\t(c) The Capcitor Voltage at t=2μs is %0.2fV",Vc);
