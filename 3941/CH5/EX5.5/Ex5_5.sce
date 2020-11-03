//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 5.5
//Finding the Values of LC Filter for the Buck Regulator.

clc;
clear;
Vs=12;               //Input voltage in Volts.
Va=5;                //Average output voltage in Volts.
R=500;               //Resistance in Ohm.
Vc=20;               //Peak to peak ripple output voltage in milli volts.
f=25;                //Frequency in kHz.
del_I=0.8;           //Peak to peak ripple current of inductor in Amps.
k=(Va/Vs);           //Calculating the duty cycle.
L=(Va*(Vs-Va))/(del_I*f*10^3*Vs);//Calculating the filter inductance.
C=del_I/(8*Vc*10^-3*f*10^3);     //Calculating the filter capacitance.
Lc=((1-k)*R)/(2*f*10^3);      //Calculating the critical value of inductance.
Cc=(1-k)/(16*L*10^-6*(f*10^3)^2);//Calculating the critical value of capacitance.
printf("\n\t(a).The Duty Cycle k is %0.2f percent",k*100);
printf("\n\t(b).The filter inductance L is %0.2fmicroH",L*10^6);
printf("\n\t(c).The filter capacitance C is %imicroF",C*10^6);
printf("\n\t(d).The critical value of inductance Lc is %0.2fmH",Lc*10^3);
printf("\n\t    The critical value of capacitance Cc is %0.1fmicroF",Cc);
