//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 13.3
//Finding the Performance Parameters of a Push–Pull Converter.

clc;
clear;
Vo=24;                           //Output voltage in volts.
R=0.8;                           //Resistance in Ohm.
Vt=1.2;                          //On state voltage drop of transistor in volts.
Vd=0.7;                          //On state voltage drop of diode in volts.
a=0.25;                          //Turns ratio of the transformer.
k=0.5;                           //Duty cycle.
Io=Vo/R;                         //Calculating the output current.
Po=Vo*Io;                        //Calculating the output power.
V2=Vo+Vd;                        //Calculating the secondary voltage.
V1=V2/a;                         //Calculating the primary voltage.
Vs=V1+Vt;                        //Calculating the supply voltage.
Is=((Vd*Io)+(Po))/(Vs-Vt);       //Calculating the supply current.
Pi=Vs*Is;                        //Calculating the input power.
eff=Po/Pi;                         //Calculating the efficiency.
IA=Is/2;                         //Calculating the average transistor current.
Ip=Is;                           //Calculating the peak transistor current.
IR=sqrt(k)*Ip;                   //Calculating the rms transistor current.
Voc=2*Vs;                       //Calculating open circuit transistor voltage.
printf("\n\t(a).The output current Io is %0.0fA",Io);
printf("\n\t    The output power Po is %0.0fW",Po);
printf("\n\t    The secondry voltage V2 is %0.1fV",V2);
printf("\n\t    The primary voltage V1 is %0.1fV",V1);
printf("\n\t    The input voltage Vs is %0.0fV",Vs);
printf("\n\t    The average input current Is is %0.1fV",Is);
printf("\n\t(b).The input power Pi is %0.0fW",Pi);
printf("\n\t    The efficiency eff is %0.1fPercent",eff*100);
printf("\n\t(c).The average transistor current IA is %0.2fA",IA);
printf("\n\t(d).The peak transistor current Ip is %0.1fA",Ip);
printf("\n\t(e).The rms transistor current IR is %0.2fA",IR);
printf("\n\t(f).The open circuit transistor current Voc is %0.0fV",Voc);
