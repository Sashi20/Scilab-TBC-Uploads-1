//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 5.2
//Finding the Currents of a Dc Converter with an RL Load.

clc;
clear;
Vs=220;                 //Supply voltage in volts.
R=5;                    //Resistance in Ohms.
L=7.5;                  //Inductance in milli Henry.
f=1;                    //Frequency in KHZ.
k=0.5;                  //Duty cycle.
E=0;                    //Battery voltage in volts.
T=1/(f*10^3);
//Calculating the constat value of the equation I1 and I2 from Eq(5.23 and 5.24)
x1=exp(-((k*T*R)/(L*10^-3)));x2=((Vs-E)/R)*(1-(exp(-((k*T*R)/(L*10^-3)))));
y1=exp(-(((1-k)*T*R)/(L*10^-3)));y2=0;
A=[-x1 1;1 -y1];B=[x2;y2];
I=inv(A)*B;             //Calculating the value of current.
I1=I(1,1);              //minimum load current.
I2=I(2,1);              //The peak load current.
del_I=I2-I1;               //Calculating the peak to peak ripple current.
del_Imax1=(Vs/R)*(tanh(R/(4*f*10^3*L*10^-3)));//Calculating the maximum peak to peak ripple current.
del_Imax2=(Vs)/(4*f*10^3*L*10^-3);
Ia=(I2+I1)/2;           //Calculating the average load current.
Io=sqrt(((I1)^2)+(((I2-I1)^2)/3)+(I1*(I2-I1)));//Calculating the rms value of load current
Is=k*Ia;                                  //Calculating the average source current.
Ri=Vs/Is;                                 //Calculating the efective input resistance.
Ir=sqrt(k)*Io                             //Calculating the rms value of coverter current.
z=52.5;            
L1=(T*R)/z;                                //Calculating the value of inductance.
printf("\n\t(a).The minimum instantaneous load current I1 is %0.2fA",I1);
printf("\n\t(b).The peak instantaneous load current I2 is %0.2fA",I2);
printf("\n\t(c).The maximum peak to peak ripple current del_I is %0.2fA",del_I);
printf("\n\t    From Eq. (5.29), del_Imax is %0.2fA",del_Imax1);
printf("\n\t    From Eq. (5.30), the approximate value of del_Imax is %0.2fA",del_Imax2);
printf("\n\t(d).The average load current Ia is %0.0fA",Ia);
printf("\n\t(e).The rms value of load current Io is %0.1fA",Io);
printf("\n\t(f).The average source current Is is %0.0fA",Is);
printf("\n\t    The effective input resistance Ri is %i Ohm",Ri);
printf("\n\t(g).The rms value of converter current Ir is %0.2fA",Ir);
printf("\n\t(h).The critical value of load inductance for continuous load current L is %0.3fmH",L1*10^3);
