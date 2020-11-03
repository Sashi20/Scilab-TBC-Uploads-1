//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 5.7
//Finding the Currents and Voltage in the Buck–Boost Regulator.

clc;
clear;
Vs=12;                        //Input voltage in Volts.
k=0.25;                       //Duty cycle.
f=25;                         //Frequency in KHZ.
L=150;                        //Inductance in micro Henry.
C=220;                        //Capacitance in micro Farad.
Ia=1.25;                      //Average load current in Amps.
Va=(-Vs*k)/(1-k);             //Calculating the average output voltage.
del_Vc=(Ia*k)/(f*10^3*C*10^-6);  //Calculating the peak output ripple voltage.
del_I=(Vs*k)/(25*10^3*L*10^-6);  //Calculating the peak ripple current of inductor.
Is=(Ia*k)/(1-k);              //Calculating the average output current.
Ip=(Is/k)+(del_I/2);             //Calculating the peak current of transistor.
R=-Va/Ia;                     //Calculating the resistance.
Lc=((1-k)*R)/(2*f*10^3);      //Calculating the critical value of inductance.
Cc=(k)/(2*f*10^3*R);         //Calculating the critical value of capacitance.
printf("\n\t(a).The average output voltage Va is %iV",Va);
printf("\n\t(b).The peak to peak output ripple voltage del_Vc is %0.1fmV",del_Vc*10^3);
printf("\n\t(c).The peak to peak ripple current of inductor del_I is %0.1fA",del_I);
printf("\n\t(d).The input current Is is %0.4fA",Is);
printf("\n\t    The peak current of transistor Ip is %0.3fA",Ip);
printf("\n\t(e).The Resistance R is %0.1f Ohm",R);
printf("\n\t    The critical value of inductance Lc is %i microH",Lc*10^6);//Book answer is wrong.
printf("\n\t    The critical value of capacitance Cc is %0.2f microF",Cc*10^6);
