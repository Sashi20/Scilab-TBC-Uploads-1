//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 6.1
//Finding the Parameters of the Single-Phase Half-Bridge Inverter.

clc;
clear;
Vs=48;                    //Dc input voltage in volts.
R=2.4;                    //Resistance in Ohm.
k=0.5;                    //Duty cycle.
Vo1=0.45*Vs;              //Calculating the rms output voltage.
Vo=Vs/2;                  //Calculatint the output voltage.
Po=Vo^2/R;                //Calculating the output power.
Ip=Vo/R;                  //Calculaitng the peak transistor current.
Iq=k*Ip;                  //Calculatingthe average current of each transistor.
Vbr=2*Vo;                 //Calcuating the peak reverse blocking voltage.
Is=Po/Vs;                //Calculating the average supply current.
Vh=0.2176*Vs       ;     //Calculating the rms harmonic voltage.
THD=Vh/Vo1;              //Calculating the total harmonic distrotion.
Von=0.024*Vs;            //Calculating the instantaneous output voltage.
DF=Von/Vo1;              //Calculating the distrotion factor.
LOH=Vo1/3;Vo3=LOH;       //Calculating the lowest order harmonic.
HF3=Vo3/Vo1;             //Calculating the harmonic factor.
DF3=(Vo3/3^2)/Vo1;       //Calculating the distrotion factor.
printf("\n\t(a).The rms output voltage Vo1 is %0.1fV",Vo1);
printf("\n\t(b).The output voltage Vo is %iV",Vo);
printf("\n\t    The output power Po is %iW",Po);
printf("\n\t(c).The peak transistor current Ip is %iA",Ip);
printf("\n\t    The average current of each transistor Iq is %iA",Iq);
printf("\n\t(d).The peak reverse blocking voltage Vbr is %iV",Vbr);
printf("\n\t(e).The average supply current Is is %iA",Is);
printf("\n\t(f).The rms harmonic voltage Vh is %0.4fV",Vh);
printf("\n\t    The total harmonic distrotion factor THD is %0.2f percent",THD*100);
printf("\n\t(g).The instantaneous output voltage Von is %0.2fV",Von);
printf("\n\t    The distrotion factor DF is %0.2f percent",DF*100);
printf("\n\t(h).The least order harmonic LOH is %0.2f ",LOH);
printf("\n\t    The harmonic facrot HF3 is %0.2f percent",HF3*100);
printf("\n\t    The distrotion factor DF3 is %0.2f percent",DF3*100);
//Answers varies due to round off error.
