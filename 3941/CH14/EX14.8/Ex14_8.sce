//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 14.8
//Finding the Performance Parameters of a Dc–dc Converter Drive.

clc;
clear
Vs=600;                          //Dc supply voltage in volts.
Ra=0.05;                         //Armature resistance in Ohm.
Kv=1.527;                        //Back emf constant of motor in V/A rad/s.
Ia=250;                          //Average armature current in ampere.
If=2.5;                          //Field current in ampere.
k=0.6;                           //Duty cycle.
Rm=Ra;                           //Calculating totlal circuit resistance.
Pt=k*Vs*Ia;                      //Calculating total power.
Req=Vs/(Ia*k);                   //Calculating equivalent resistance.
Va=k*Vs;                         //Calculating armature volatage.
Eg=Va-(Rm*Ia);                   //Calculating back emf.
w=Eg/(Kv*If);                    //Calculating speed in rad/sec.
N=(w*30)/%pi;                    //Calculating speed in rpm.
Td=Kv*Ia*If;                     //Calculating the developed torque.
printf("\n\t(a).The total power Pf is %0.0fkW",Pt*10^-3);
printf("\n\t(b).The equivalent reisitance Req is %0.0fΩ",Req);
printf("\n\t(c).The armature volatge Va is %0.0fV",Va);
printf("\n\t    The back emf Eg is %0.1fV",Eg);
printf("\n\t    The motor speed in rad/sed w is %0.2frad/sec",w);
printf("\n\t    The motor speed in rpm N is %0.1frpm",N);
printf("\n\t(d).The developed torque Td is %0.2fN-m",Td);
