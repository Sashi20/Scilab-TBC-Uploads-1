//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 14.9
//Finding the Performance of a Dc–dc Converter-Fed Drive in Regenerative Braking.

clc;
clear;
Vs=600;                          //Dc supply voltage in volts.
Ra=0.02;                         //Armature resistance in Ohm.
Kv=15.27;                        //Back emf constant of motor in mV/A rad/s.
Ia=250;                          //Average armature current in ampere.
Rf=0.03;                         //Field resistance in Ohm.
k=0.6;                           //Duty cycle.
Rm=Ra+Rf;                        //Calculating total circuit resistance.
Vch=(1-k)*Vs;                    //Calculating the voltage across dc-dc converter from Eq 14.37.
Pg=Ia*Vs*(1-k);                  //Calculating the power regenerated to dc supply from Eq 14.38.
Req=((Vs/Ia)*(1-k))+(Rm);        //Calculating the equivalent resistance from Eq 14.40.
wmin=Rm/(Kv*10^-3); Nmin=(wmin*30)/%pi   //Calculating minimum braking speed form Eq 14.42.
wmax=(Vs/(Kv*10^-3*Ia))+(Rm/(Kv*10^-3));Nmax=(wmax*30)/%pi//Calculating maximum braking speed from Eq 14.43.
Eg=Vch+(Rm*Ia);                         //Calculating back emf from Eq 14.39.
w=Eg/(Kv*10^-3*Ia);N=(w*30)/%pi;        //Calculating speed of the motor.
printf("\n\tThe series resistance Rm is %0.2fΩ",Rm);
printf("\n\t(a).The voltage across dc-dc converter Vch is %0.0fV",Vch);
printf("\n\t(b).The power regenerated to dc supply Pg is %0.0fKW",Pg*10^-3);
printf("\n\t(c).The equivalent resistance Req is %0.2fΩ",Req);
printf("\n\t(d).The minimum permissible braking speed wmin is %0.3frad/sec = %0.2frpm",wmin,Nmin);
printf("\n\t    The maximim permissible braking speed wmax is %0.3frad/sec = %0.2frpm",wmax,Nmax);
printf("\n\t(f).The back emf Eg is %0.1fV",Eg);
printf("\n\t    The speed of the motor w is %0.2frad/sec = %0.1frpm",w,N);
//Some answers are varied due to round-off error.
