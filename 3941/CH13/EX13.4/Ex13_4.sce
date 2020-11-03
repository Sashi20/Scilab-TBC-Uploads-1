//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 13.4
//Finding the Performance Parameters of a Half-Bridge Resonant Inverter.

clc;
clear;
Vo=24;                           //Output voltage in volts.
RL=0.8;                          //Load resistance in Ohm.
C=1;                             //Capacitance in micro Farad.
L=20;                            //Inductance in micro Henry.
R=0;                             //Resistance in ohm.
Vs=100;                          //Supply voltage in volts.
a=0.25;                          //Turns ratio of transformer.
Ce=2*C;                          //Calculating effective capacitance.
wr=1/sqrt(Ce*10^-6*L*10^-6);     //Calculating resonant frequency in rad/sec.
fr=wr/(2*%pi);                   //Calculating resonant frequecny in Hz.
Io=Vo/RL;                         //Calculating output current.
Po=Vo*Io;                        //Calculating output power.
V2=(%pi*Vo)/(2*sqrt(2));         //Calculating secondary voltage.
Is=Po/Vs;                        //Calculating supply current.
IA=Is;                           //Calculating average transistor current.
Ip=IA*%pi;                       //Calculating peak transistor current.
IR=Ip/2;                         //Calculating rms transistor current.
Voc=Vs;                          //Calculating open circuit trasistor voltage.
printf("\n\twr=%0.1frad/sec\n\tfr=%0.1fHz",wr,fr);
printf("\n\t(a).The output current Io is %0.0fA",Io);
printf("\n\t    The output power Po is %0.0fW",Po);
printf("\n\t    The secondary rms voltage V2 is %0.2fV",V2);
printf("\n\t    The average input current Is is %0.1fA",Is);
printf("\n\t(b).The average transistor current IA is %0.1fA",IA);
printf("\n\t(c).The peak transistor current Ip is %0.2fA",Ip);
printf("\n\t(d).The rms transistor current IR is %0.2fA",IR);
printf("\n\t(e).The open circuit transistor voltage Voc is %0.0fV",Voc);
