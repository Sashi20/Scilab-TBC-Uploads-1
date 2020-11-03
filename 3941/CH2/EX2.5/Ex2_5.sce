//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 2.5
//Finding the Steady-State Current and the energy Stored in an Inductor

clc;
clear;
Vs=220;                  //Voltage across the diode in volts.
R=4;                     //Resistance in Ohms.
L=5;                     //Inductance in milli Henry.
Ip=Vs/R;                 //Calculating the peak diode current.
printf("\n\t(a). The steady state peak diode current Ip is %iA",Ip);
W=0.5*L*10^-3*Ip^2;      //Calculating the energy stored in inductor.
printf("\n\t(b). The energy stored in the Inductor L, W is %0.3fmJ",W);
di_by_dt=Vs/(L);          //Calculating the intial di/dt.
printf("\n\t(c). The intial change in current di/dt is %iA/ms",di_by_dt);
t=1;                     //time in milli second.
i=(Vs/R)*(1-exp(-t*R/L));
printf("\n\t(d). The inductor current at t=1ms is %0.3fA",i);
