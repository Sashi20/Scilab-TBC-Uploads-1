//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 5.6
//Finding the Currents and Voltage in the Boost Regulator.

clc;
clear;
Vs=5;                      //Input voltage in Volts.
Va=15;                     //Average output voltage in Volts.
Ia=0.5;                    //Average output current in Amps.
f=25;                      //Frequency in KHZ.
L=150;                     //Inductance in micro Henry.
C=220;                     //Capacitance in micro Farad.
k=1-(Vs/Va);               //Calculating the duty cycle.
del_I=(Vs*(Va-Vs))/(f*10^3*L*10^-6*Va);//Calculating the ripple current of inductor.
Is=Ia/(1-k);                        //Calculating the input current.
I2=Is+(del_I/2);                       //calculating the peak inductor current.
del_Vc=(Ia*k)/(f*10^3*C*10^-6);        //Calculating the ripple voltage of capacitor
R=Va/Ia;                            //Calculating the input resistance.
Lc=((1-k)*k*R)/(2*f*10^3);          //Calculating the critical value of inductor.
Cc=k/(2*f*10^3*R);                  //Calculating the critical value of capacitor
printf("\n\t(a).The Duty Cycle K is %0.2f percent",k*100);
printf("\n\t(b).The ripple current of inductor del_I is %0.2fA",del_I);
printf("\n\t(c).The peak current of inductor I2 is %0.3fA",I2);
printf("\n\t(d).The ripple voltage of filter capacitor del_Vc is %0.2fmV",del_Vc*10^3);
printf("\n\t(e).The critical value of inductor Lc is %i microH",Lc*10^6);
printf("\n\t    The critical value of capacitor Cc is %0.2f microF",Cc*10^6);
