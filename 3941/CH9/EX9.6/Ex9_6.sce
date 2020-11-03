//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 9.6
//Finding the Circuit Values of a Programmable UJT Triggering Circuit.

clc;
clear;
Vs=30;                          //Supply voltage in volts.
Ig=1;                           //Gate current in milli Ampere.
f=60;                           //Oscillation frequency in Hz.
tg=50;                          //Pulse width in micro second.
Vrk=10;                         //Peak triggering voltage in volts.
T=1/f;                          //Calculating the width of a cycle.
C=0.5;                          //Assumed value of capacitance in micro farad.
Rk=tg/C;                        //Calculating the triggering resistance.
Vp=Vrk;                         //Calculating the peak voltage.
eff=Vp/Vs;                        //Calculating the efficiency.
R=T/((C*10^-6)*log(1/(1-eff)));   //Calculating the value of resistance.
Rg=(1-(1/3))*(Vs/(Ig*10^-3));   //Calculating the gate resistance.
R1=(Rg/eff);                      //Calculating the value of resistance R1.
R2=Rg/(1-eff);                    //Calculating the value of resistance R2.
printf("\n\tThe value of triggering resistance Rk is %0.0f Ohm",Rk);
printf("\n\tThe value of peak voltage Vp is %iV",Vp);
printf("\n\tThe efficiency eff is %0.2f",eff);
printf("\n\tThe value of Reistance R is %0.3f kilo Ohm",R*10^-3);
printf("\n\tThe value of gate resistance Rg is %0.0f Kilo Ohm",Rg*10^-3);
printf("\n\tThe value of resistance R1 is %0.0f kilo Ohm",R1*10^-3);
printf("\n\tThe value of resistance R2 is %0.0f Kilo Ohm",R2*10^-3);
