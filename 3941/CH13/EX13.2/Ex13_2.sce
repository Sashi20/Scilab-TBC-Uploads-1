//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 13.2
//Finding the Performance Parameters of a Forward Converter.

clc;
clear;
Vo=24;                           //Output voltage in volts.
R=0.8;                           //Resistance in Ohm.
Vt=1.2;                          //On state voltage drop of transistor in volts.
Vd=0.7;                          //On state voltage drop of diode in volts.
k=0.4;                           //Duty cycle.
f=1;                             //Switching frequency in KHz.
Vs=12;                           //Supply voltage in volts.
a=0.25;                          //Turns ratio of the transformer.
Ip1=4;                            //Percentage of ripple current to be maintained of its average value.
Ip2=3;                            //Ripple current of output voltage in percentage.
Io=Vo/R;                         //Calculating output current.
Po=Vo*Io;                        //Calculating the output power.
V2=Vo+Vd;                        //Calculating the secondary voltage.
V1=Vs-Vt;                        //Calculating the primary voltage.
a1=V2/V1;                        //Calculating the turns ratio.
Is=((Vd*Io)+Po)/(Vs-(Vt*k)-(Vd*(1-k)));//Calculating the supply current.
Pi=Vs*Is;                              //Calculating the input power.
eff=Po/Pi;                               //Calculating the efficiency.
IA=k*Is;                               //Calculating the average transistor current.
Ip=Is;                                 //Calculating the peak transistor current.
del_Ip=0.05*Is;                           //Calculating change in peak transistor current.
IR=sqrt(k)*((Ip^2)+(del_Ip/3)+(del_Ip*Ip))^0.5;//Calculating rms transistor current.
Voc=Vs+(V2/a1);                          //Calculating open circuit transistor voltage.
del_IL1=(Ip1/100)*Io;                            //Calculating change in inductor current.
del_Vo=(Ip2/100)*Vo;                             //Calculating change in output voltage.
L1=(del_Vo*k)/(f*10^3*del_IL1);                //Calculating the value of inductance.
Lp=((Vs-Vt)*k)/((f*10^3)*(del_Ip-(a1*del_IL1)));//Calculating value of peak inductance.
printf("\n\t(a).The output current Io is %0.0fA",Io);
printf("\n\t    The output power Po is %0.0fW",Po);
printf("\n\t    The secondry voltage V2 is %0.1fV",V2);
printf("\n\t    The primary voltage V1 is %0.1fV",V1);
printf("\n\t    The turns ratio a is %0.3f",a1);
printf("\n\t    The average input current Is is %0.2fA",Is);
printf("\n\t(b).The input power Pi is %0.0fW",Pi);
printf("\n\t    The efficiency eff is %0.1fPercent",eff*100);
printf("\n\t(c).The average transistor current IA is %0.1fA",IA);
printf("\n\t(d).The change in peak transistor current del_Ip is %0.3fA",del_Ip);
printf("\n\t(e).The rms transistor current IR is %0.1fA",IR);//Book answer is wrong.
printf("\n\t(f).The open circuit transistor voltage Voc is %0.1fV",Voc);
printf("\n\t(g).The change in inductor current del_IL1 is %0.2fV",del_IL1);
printf("\n\t    The change in output voltage del_Vo is %0.2fV",del_Vo);
printf("\n\t    The inductance L1 is %0.2fmH",L1*10^3);
printf("\n\t(h).The value of peak inductance Lp is %0.2fmH",Lp*10^3);
//Some answers may change due to round-off error.
