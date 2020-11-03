//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 14.14
//Determining the Optimized Gains and Time Constants of the Current and Speed Loop Controllers.

clc;
clear;
Vdc=220;                        //Rated voltage of in volts.
Idc=6.4;                        //Rated current of motor in ampere.
N=1570;                         //Rated speed of motor in rpm.
Rm=6.5;                         //Resistance in Ohm.
J=0.06;                         //Iertia of the motor in Kg-m^2.
Lm=67;                          //Inductance in milli Henry.
B=0.087;                        //Viscous friction constant in N-m/rad/s.
Kb=1.24;                        //Back emf constant in V/rad/s.
VL=220;                         //Supply voltage in volts.
fs=60;                          //Supply frequency in Hz.
Vcm=10;                         //Maximum control input voltage in volts.
Vs=VL/sqrt(3);                  //Calculating the phase voltage.
Kr=(2.339*Vs)/Vcm;              //Calculating gain of the converter.
Kw=0.074;                       //Gain constant.
tau_w=0.002;                     //Time constant.
Ia_max=20;                      //Maximum permisable motor current in ampere.
Vdc_max=Kr*Vcm;                 //Calculating maximum dc voltage.
Vc=(Vdc*Vcm)/Vdc_max;           //Calculating converter control voltage.
tau_r=1/(12*fs);                   //Calculating the time constant.
Hc=Vc/Ia_max;                   //Calculating current feedback gain.
Km=B/(Kb^2+(Rm*B));             //Calculating gain constant of motor.
//Calculating the time constants of motor.
r=poly(0,"r");
a=r^2+((Rm/(Lm*10^-3))+(B/J))*r+((((Rm*B)+Kb^2)/(J*Lm*10^-3)));
a1=roots(a);
r1=a1(2,1);r2=a1(1,1);
tau_1=-1/r1;tau_2=-1/r2;
tau_m=J/B;
tau_c=tau_2;                           //Calculating  time constant of current controller.
Kc=(tau_1*tau_c)/(2*tau_r*Km*Kr*Hc*tau_m);   //Calculating gain constant of current controller.
K1=(Km*Kc*Kr*Hc*tau_m)/tau_c;          //Calculating the gain constant.
Ki=(1/Hc)*(K1/(1+K1));           //Calculating gain constant of current loop.
tau_3=tau_1+tau_r;                        //Calculating time constant.
tau_i=tau_3/(1+K1);                    //Calculating time constant of current loop.
tau_e=tau_i+tau_w;                        //Calculating the time constant.
Kw=(Ki*Kb*Kw)/(B*tau_m);            //Calculating gain constant.
Ks=1/(2*Kw*tau_e);                  //Calculating the gian constant of speed controller.
tau_s=4*tau_e;                         //Calculating the time constant of speed controller.
printf("\n\t(a).The phase voltage Vs is %0.2fV",Vs);
printf("\n\t    The maximum dc voltage Vdc(max) is %0.2fV",Vdc_max);
printf("\n\t    The converter control voltage Vc is %0.2fV",Vc);
printf("\n\t    The gain of the converter Kr is %0.2fV",Kr);
printf("\n\t    The time constant of the converter tau_r is %0.2fms",tau_r*10^3);
printf("\n\t(b).The current feedback gain Hc is %0.2fV/A",Hc);
printf("\n\t(c).The motor gain Km is %0.2f",Km);
printf("\n\t    r1 = %0.2f\n\t    r2 = %0.2f",r1,r2);
printf("\n\t    The time constant of motor are;");
printf("\n\t    t1=%0.2fs\n\t    tau_2=%0.1fs\n\t    tau_m=%0.2fs",tau_1,tau_2,tau_m);
printf("\n\t(d).The time constant of the current controller tau_c is %0.2fs",tau_c);
printf("\n\t    The gain of the current controller Kc is %0.2f",Kc);
printf("\n\t(e).The gain constnt of simplified current loop are,");
printf("\n\t    K1=%0.2f\n\t    Ki=%0.2f",K1,Ki);
printf("\n\t    The time constant of simplified current loop are,");
printf("\n\t    tau_3=%0.2fs\n\t    tau_i=%0.2fms",tau_3,tau_i*10^3);
printf("\n\t(f).The gain constant of current controller are,");
printf("\n\t    Kw=%0.2f\n\t    Ks=%0.2f",Kw,Ks);
printf("\n\t    The time constant of speed controller are,");
printf("\n\t    tau_e=%0.2fms\n\t    tau_s=%0.2fms",tau_e*10^3,tau_s*10^3);
//Some answers may change due to round-off error.
