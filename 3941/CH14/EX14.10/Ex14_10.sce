//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 14.10
//Finding the Performance of a Dc–dc Converter-Fed Drive in Rheostatic Braking.

clc;
clear;
Ra=0.05;                        //Armature resistance in Ohm.
Rb=5;                           //Braking rsistance in Ohm.
Kv=1.527;                       //Back emf constant in V/A rad/sec.
Ia=150;                         //Armature current in ampere.
If=1.5;                         //Fiield current in ampere.
k=0.4;                          //Duty cycle.
Rm=Ra;                          //Calculating total circuit resistance.
Vch=Rb*Ia*(1-k);                //Calculating voltage across dc-dc converter.
Pb=Ia^2*Rb*(1-k);               //Calculating the pwer dessipated in braking resistor.
Req=(Rb*(1-k))+Ra;              //Calculating equivalent resistance.
Eg=Vch+(Ra*Ia);                 //Calculating back emf.
w=Eg/(Kv*If);N=(w*30)/%pi;      //Calculating the brking speed.
Vp=Ia*Rb;                       //Calculating peak converter voltage.
printf("\n\t(a).The average voltage across dc-dc converter Vch is %0.0fV",Vch);
printf("\n\t(b).The power dessipated in braking resistor Pb is %0.1fKW",Pb*10^-3);
printf("\n\t(c).The equivalent resistance Req is %0.2fΩ",Req);
printf("\n\t(d).The back emf Eg is %0.1fV",Eg);
printf("\n\t    The braking speed w is %0.2frad/sec = %0.1frpm",w,N);
printf("\n\t(e).The peak dc-dc converter voltage Vp is %0.0fV",Vp);
