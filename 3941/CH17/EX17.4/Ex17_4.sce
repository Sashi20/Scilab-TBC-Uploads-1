//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 17.4
//Finding the Peak Value, the di/dt, and the dv/dt Values of the Snubber Circuit.

clc;
clear;
C=0.75;                      //Capcitance in micro farad.
R=6.6;                       //Resistance in Ohm.
Vs=220;                      //Supply voltage in volts.
L=50;                        //Inductance in micro henry.
alp=R/(2*L*10^-6);             //Calculating damping constant from Eq 17.13.
wo=10^6/sqrt(L*C);               //Calculating undamped natural frequency from Eq 17.14.
del=(R/2)*sqrt(C/L);           //Calculating damping ratio from Eq 17.15.
w=wo*sqrt(1-del^2);             //Calculating underdamped natural frequency from Eq 17.16.
t1=(%pi-(atan(((2*del)*(sqrt(1-del^2)))/(1-(2*del^2)))))/w;//Calculating the intial time from Eq 17.33.
Vp=Vs*(1+exp(-alp*t1));        //Calculating peak voltage from Eq 17.32.
dv_by_dt=Vs*(R/L);                 //Calculating the intial change in voltage from Eq 17.28.
tm=(atan((w*(w^2-(3*alp^2)))/(alp*((3*w^2)-alp^2))))/w;//Calculating the maximum circuit time from Eq 17.34.
dv_by_dt_max=Vs*sqrt(w^2+(alp^2))*(exp(-alp*tm));//Calculating maximum change in voltage from Eq 17.35.
printf("\n\t(a).The damping constant alp is %0.0f",alp);
printf("\n\t    The undamped natural frequency wo is %0.0frad/s",wo);
printf("\n\t    The damping ratio del is %0.3f",del);
printf("\n\t    The underdamped natural frequency w is %0.0frad/s",w);//Answer of underdamped natural frequency is wrong.
printf("\n\t    The initial time t1 is %0.2fµs",t1*10^6);
printf("\n\t    The peak voltage Vp is %0.1fV",Vp);
printf("\n\t(b).The initial change in voltage dv/dt is %0.0fV/µs",dv_by_dt);
printf("\n\t(c).The maximum time tm is %0.2fµs",tm*10^6);
printf("\n\t    The maximum dv/dt is %0.1fV/µs",dv_by_dt_max*10^-6);
//Some answers are changed due to round-off error.
