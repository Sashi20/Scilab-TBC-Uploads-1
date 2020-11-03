//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 2.9
//Finding the recovery energy in an Inductor with a Feedback Diode

clc;
clear;
Lm=250;              //Magnetizing inductance of transformer in micro Hery.
N1=10;N2=100;        //Primary and Secondry turns of the transformer.
Vs=220;              //Source voltage in volts.
t1=50                //Time for which switch S1 is close in micro seconds.
a=N2/N1;             //Calculating the turns ratio.
VD=Vs*(1+a);         //Calculating reverse voltage of the diode.
Io=(Vs/Lm)*(t1);     //Calculating the peak value of the primary current.
Io1=Io/a;            //Calculating the peak value of the secondary current.
t2=(a*Lm*Io)/(Vs);   //Calculating the conduction time of the diode.
W=0.5*(Lm*10^-6)*(Io^2);     //Calculating the source energy.
printf("\n\tThe turns ratio a = %i",a);
printf("\n\t(a). The reverse voltage of the diode VD is %iV",VD);
printf("\n\t(b). The peak value of the primary current Io is %iA",Io);
printf("\n\t(c). The peak value of the secondary current Io1 is %0.1fA",Io1);
printf("\n\t(d). The conduction time ot the diode t2 is %iμs",t2);
printf("\n\t(e). The source energy, W is %0.3fJ",W);
