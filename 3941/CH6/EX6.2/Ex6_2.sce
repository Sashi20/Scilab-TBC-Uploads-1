//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 6.2
//Finding the Parameters of the Single-Phase Full-Bridge Inverter.

clc;
clear;
Vs=48;                    //Dc input voltage in volts.
R=2.4;                    //Resistance in Ohm.
k=0.5;                    //Duty cycle.
V1=0.90*Vs;               //Calculating the rms output voltage.
Po=Vs^2/R;                //Calculating the output power.
Ip=Vs/R;                  //Calculaitng the peak transistor current.
Iq=k*Ip;                  //Calculatingthe average current of each transistor.
Vbr=Vs;                   //The peak reverse blocking voltage is equal to Vs.
Is=Po/Vs;                 //Calculating the average supply current.
Vh=0.4359*Vs;             //Calculating the rms harmonic voltage.
THD=Vh/V1;                //Calculating the total harmonic distrotion.
DF=(0.048*Vs)/V1;         //Calculating the distrotion factor.
LOH=V1/3;Vo3=LOH;         //Calculating the lowest order harmonic.
HF3=Vo3/V1;               //Calculating the harmonic factor.
DF3=(Vo3/3^2)/V1;         //Calculating the distrotion factor.
printf("\n\t(a).The rms output voltage V1 is %0.1fV",V1);
printf("\n\t(b).The output power Po is %iW",Po);
printf("\n\t(c).The peak transistor current Ip is %iA",Ip);
printf("\n\t    The average current of each transistor Iq is %iA",Iq);
printf("\n\t(d).The peak reverse blocking voltage Vbr is %iV",Vbr);
printf("\n\t(e).The average supply current Is is %iA",Is);
printf("\n\t(f).The rms harmonic voltage Vh is %0.4fV",Vh);
printf("\n\t    The total harmonic distrotion factor THD is %0.2f percent",THD*100);
printf("\n\t(g).The distrotion factor DF is %0.2f percent",DF*100);
printf("\n\t(h).The least order harmonic LOH is %0.2f ",LOH);
printf("\n\t    The harmonic facrot HF3 is %0.2f percent",HF3*100);
printf("\n\t    The distrotion factor DF3 is %0.3f percent",DF3*100);
