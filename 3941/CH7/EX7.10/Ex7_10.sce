//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 7.10
//Finding the Values of L’s and C’s for a Class E Rectifier.

clc;
clear;
PL=400;                      //Load power in milli watts.
Vo=4;                        //Load voltage in volts.
Vm=10;                       //Peak supply voltage in volts.
f=250;                       //Supply frequency in KHz.
del_Vo=40;                      //Peak to peak ripple output voltage in milli volts.
C=10;                        //Chosed suitable value of capacitance nano farad.
L=(1/(2*%pi*f*10^3))^2/(C*10^-9);        //Calculating the inductance from the equation of resonant frequency fo.
R=Vo^2/(PL*10^-3);                       //Calculating the Resistance from the equation of load power PL.
Io=Vo/R;                                 //Calculating the output current.
Cf=(Io*10^3)/(2*f*10^3*del_Vo*10^-3);       //Calculating the capacitance.
Im=Vm/R;                                 //Calculating the peak supply current.
IL_rms=sqrt(((Io*10^3)^2)+(f^2/2));      //Calculating the rms inductor current.
IL_dc=Io                                 //The Inductor current.
IC_rms=f/sqrt(2);                        //Calculating the rms capacitor current.
IC_dc=0;                                 //The capacitor current.
printf("\n\t(a).The suitable value of capacitance choosen is %inF",C);
printf("\n\t    The inductance L is %0.1f micro Henry",L*10^6);
printf("\n\t    The resistance R is %0.0f Ohm",R);
printf("\n\t    The output current Io is %0.0fmA",Io*10^3);
printf("\n\t    The capacitance Cf is %0.0f micro Farad",Cf*10^3);
printf("\n\t(b).The peak supply current Im is %0.0fmA",Im*10^3);
printf("\n\t    The rms inductor current IL(rms) is %0.1fmA",IL_rms);
printf("\n\t    The indctance current IL(dc) is %0.0fmA",IL_dc*10^3);
printf("\n\t    The rms capacitor current IC(rms) is %0.2fmA",IC_rms);
printf("\n\t    The capacitor current IC(dc) is %i",IC_dc);
