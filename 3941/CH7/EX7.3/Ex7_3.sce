//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 7.3
//Finding the Currents and Voltages of a Simple Resonant Inverter.

clc;
clear;
Vs=220;                             //Supply voltage in volts.
C=2;                                //Capacitance in micro farad.
L=20;                               //Inductance in micro henry.
tsw=12;                             //Switching time in micro seconds.
fo=20;                              //Output frequency in KHZ.
wr=1/(sqrt(L*C*10^-12));           //Calculating Resonant frequency in rad per second
fr=wr/(2*%pi);                     //Calculating Resonant frequncy in Hz.
Tr=1/fr;                           //Calculating time per cycle.
t1=Tr/2;                           //Calculating time per half cycle.
Vc1=2*Vs;                         //Calculating maximum capacitance voltage.
Vc=0;                             //Intial capacitance voltage.
Ip=Vs*sqrt(C/L);                  //Calculating peak supply current.
IA=(Ip*fo*10^3)/(%pi*fr);         //Calculating avergae device current.
IR=Ip*(sqrt((fo*10^3*t1)/2));     //Calculating rms device current.
Vpp=Vc1-Vc                        //Calculating peak to peak capacitor voltage.
fmax=1/(2*tsw*10^-6);             //Calculating maximum frequency.
Is=0;                             //Average supply current.
printf("\n\twr=%0.0frad/sec\n\tfr=%0.0fHz\n\tTr=%0.2fµs\n\tt1=%0.2fµs",wr,fr,Tr*10^6,t1*10^6);
printf("\n\tThe maximum capcitor current Vc1 is %0.0fV",Vc1);
printf("\n\tThe intial capacitor current Vc is %i",Vc);
printf("\n\t(a).The peak supply current Ip is %0.2fA",Ip);
printf("\n\t(b).The average device current IA is %0.1fA",IA);
printf("\n\t(c).The rms device current IR is %0.2fA",IR);
printf("\n\t(d).The peak to peak capacitor voleatge Vpp is %0.0fV",Vpp);
printf("\n\t(e).The maximum output frequency fmax is %0.2fKHz",fmax*10^-3);
printf("\n\t(f).Because there is no power loss in the circuit average supply cuurent Is is %i",Is);
