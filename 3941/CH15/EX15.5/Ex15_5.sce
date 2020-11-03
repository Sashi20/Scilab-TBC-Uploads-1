//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 15.5
//Finding the Performance Parameters of a Three-Phase Induction Motor with Frequency Control.

clc;
clear;
Po=11.2;                           //Rated capacity of the motor in kilo watts.
N=1750;                            //Rated speed of the motor in rpm.
V=460;                             //Rated voltage  of the motor in volts.
f=60;                              //Rated frequency in Hz.
p=4;                               //Number of poles of motor.
Rr_dash=0.38;                          //Rotor resistance in Ohm
Xs=1.14;                           //Stator reactance in Ohm.
Xr_dash=1.71;                          //Rotor reactance in Ohm.
Xm=33.2;                           //Magnetizing reactance in Ohm.
Tm=35;                             //Breakdown torque in N-m.
Vs=V/sqrt(3);                      //Calculating the suply voltage.
wb=2*%pi*f;                        //Calculating frequency in rad/sec.
Tmb=(Po*10^3)/(N*%pi/30);          //Calculating rated motor torque in N-m.
bet=sqrt(Tmb/Tm);                    //Calculating the frequency.
ws=bet*wb;                           //Calculating frequency in rad/sec.
w=4*ws/2;                          //Calculating the supply frequency.
sm=(Rr_dash/bet)/(Xs+Xr_dash);               //Calculating slip for maximum torque.
wm=ws*(1-sm);                      //Calculating running speed of motor.
printf("\n\t(a).The frequency constant bet is %0.3f",bet);
printf("\n\t    The frequency ws is %0.2frad/s",ws);
printf("\n\t    The supply freqency w is %0.0frad/sec = %0.2fHz",w,w/(2*%pi));
printf("\n\t(b).The slip for maximum torque sm is %0.3f",sm);
printf("\n\t    The motor speed wm is %0.2frad/s",wm);
//Some answers may be changed due to round-off error.
