//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 14.11
//Finding the Peak Load Current Ripple of Two Multiphase Dc–dc Converters.

clc;
clear;
Vs=220;                        //Supply voltage in volts.
Rm=4;                          //Total armature resistance in Ohm.
Lm=15;                         //Total armature circuit inductance in milli henry.
f=350;                         //Frequency of each converter in Hz.
fe=2*f;                        //Calculating chopper frequency.
u=2;                           //Number of dc-dc converters.
x=4*u*f*Lm*10^-3;              //Checking the conditon if 4ufLm>>Rm.
delI_max=Vs/x;                 //Calculating the peak to peak ripple current from Eq 14.49.
printf("\n\tThe effective chopping frequency fe is %0.0fHz",fe);
printf("\n\tBecause 4ufLm = %0.0f>>R;",x);
printf("\n\tThe maximum peak to peak load ripple current delImax is %0.2fA",delI_max);
