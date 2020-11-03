//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 5.8
//Finding the Currents and Voltages in the Cúk Regulator.

clc;
clear;
Vs=12;                   //Input Voltage in Volts.
k=0.25;                  //Duty cycle.
f=25;                    //Frequency in KHZ.
L2=150;                  //The filter inductance in micro Henry.
C2=220;                  //The filter capacitance in micro Farad.
C1=200;                  //The energy transfer capacitance in micro Farad.
L1=180;                  //The energy transfer inductance in micro Henry.
Ia=1.25;                 //Average load current in amps.
Va=(-k*Vs)/(1-k);        //Calculating the average load voltage.
Is=(k*Ia)/(1-k);         //Calculating the input current.
del_I1=(Vs*k)/(f*10^3*L1*10^-6);     //Calculating the peak to peak ripple current of inductor L1
del_Vc1=(Is*(1-k))/(f*10^3*C1*10^-6);//Calculating the peak to peak ripple current of capacitor C1.
del_I2=(k*Vs)/(f*10^3*L2*10^-6);     //Calculating the peak to peak ripple current of inductor L2.
del_Vc2=del_I2/(8*f*10^3*C2*10^-6);    //Calculating the peak to peak ripple current of capacitor C2.
IL2=Ia;                          //Average output value of current in inductor L2
Ip=(Is)+(del_I1/2)+(del_I2/2)+IL2;     //Calculating the peak current of transistor
printf("\n\t(a).The average output voltage Va is %iV",Va);
printf("\n\t(b).The input current Is is %0.2fA",Is);
printf("\n\t(c).The peak to peak ripple current of inductor L1, del_I1 is %0.2fA",del_I1);
printf("\n\t(d).The peak to peak ripple voltage of capacitor C1, del_Vc1 is %0.0fmV",del_Vc1*10^3);
printf("\n\t(e).The peak to peak ripple current of inductor L2, del_I2 is %0.1fA",del_I2);
printf("\n\t(f).The peak to peak ripple voltage of capacitor  C2, del_Vc2 is %0.2fmV",del_Vc2*10^3);
printf("\n\t(g).The peak current of transistor Ip is %0.3fA",Ip);
