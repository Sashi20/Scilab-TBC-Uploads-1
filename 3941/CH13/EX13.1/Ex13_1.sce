//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 13.1
//Finding the Performance Parameters of a Flyback Converter.

clc;
clear;
Vo=24;                        //Output voltage in volts.
R=0.8;                        //Resistance in Ohm.
k=50;                         //Duty cycle ratio in percentage.
f=1;                          //Switching frequency in KHz.
Vt=1.2;                       //On state voltage drop of transistor in Volts.
Vd=0.7;                       //On state voltage drop of diode in Volts.
a=0.25;                       //Turns ratio of the transformer.
Io=Vo/R;                      //Calculating output current.
Po=Vo*Io;                     //Calculating the output power.
V2=Vo+Vd;                     //Calculating the secondary voltage.
V1=V2/a;                      //Calculating the primary voltage.
Vs=V1+Vt;                     //Calculating the input voltage.
Is=((Vd*Io)+Po)/(Vs-Vt);      //Calculating the input current.
Pi=Vs*Is;                     //Calculating the input power.
eff=Po/Pi;                      //Calculating the efficiency.
IA=Is;                        //Calculating the average transistor current.
Ip=(2*IA)/(k/100);            //Calculating the peak transistor current.
IR=(sqrt((k/100)/3))*Ip;      //Calculating the rms transistor current.
Voc=Vs+(V2/a);                //Calculating open circuit transistor voltage.
Lp=(Vs*(k/100))/(f*10^3*Ip);  //Calculating the primary magnetizing inductance.
printf("\n\t(a).The output current Io is %0.0fA",Io);
printf("\n\t    The output power Po is %0.0fW",Po);
printf("\n\t    The secondry voltage V2 is %0.1fV",V2);
printf("\n\t    The primary voltage V1 is %0.1fV",V1);
printf("\n\t    The input voltage Vs is %0.0fV",Vs);
printf("\n\t    The average input current Is is %0.1fA",Is);
printf("\n\t(b).The input power Pi is %0.0fW",Pi);
printf("\n\t    The efficiency eff is %0.1fPercent",eff*100);
printf("\n\t(c).The average transistor current IA is %0.1fA",IA);
printf("\n\t(d).The peak transistor current Ip is %0.0fA",Ip);
printf("\n\t(e).The rms transistor current IR is %0.2fA",IR);
printf("\n\t(f).The open circuit transistor current Voc is %0.1fV",Voc);
printf("\n\t(g).The primary magnetizing inductance Lp is %0.2fmH",Lp*10^3);
