//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 15.12
//Finding the Performance Parameters of a Reluctance Motor.

clc;
clear;
VL=230;                           //Rated voltage of the motor.
f=60;                             //Frequency in Hz.
p=4;                              //Number of poles of the motor.
Xd=22.5;                          //Motor reactance in Ohm.
Xq=3.5;                           //Motor reactance in Ohm.
TL=12.5;                          //Load torque in N-m.
Va=VL/sqrt(3);                    //Calculating rated phase voltage.Since Va=Va_rated=Vb
w=2*%pi*f;                        //Calculating frequency in rad/sec.
ws=2*w/p;                         //Calculating motor speed.Since ws=wm.
del=asind((TL*2*ws*Xd*Xq)/(3*Va^2*(Xd-Xq)))/2;//Calculating the torque angle.
Po=TL*ws;                                  //Calculating output power.
a=Po/(3*Va);
theta_m=atand((Va-((3.5*a)/tand(del)))/(3.5*a));  //Calculating the load angle.
Ia=Po/(3*Va*cosd(theta_m));                     //Calculating the load current.
PF=cosd(theta_m);                               //Calculating the power factor.
printf("\n\t(a).The torque angle del is %0.2f°",del);
printf("\n\t(b).The output power Po is %0.0fW",Po);
printf("\n\t    The load angle theta_m is %0.1f°",theta_m);
printf("\n\t    The load current Ia is %0.1fA",Ia);
printf("\n\t(c).The power factor PF is %0.3f",PF);
