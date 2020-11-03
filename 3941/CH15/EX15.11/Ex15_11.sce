//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 15.11
//Finding the Performance Parameters of a Cylindrical Rotor Synchronous Motor.

clc;
clear;
VL=460;                    //Rated voltage in volts.
f=60;                      //Frequency in Hz.
p=6;                       //Number of poles of the motor.
Xs=2.5;                    //Stator reactance in Ohm.
TL=398;                    //Load torque in N-m.
N=1200;                    //Rated speed of motor in rpm.
PF=1;                      //Power factor.
Nm=720;                    //Running speed of the motor.
fi=36;                     //Inverter frequency in Hz.
Vs=VL/sqrt(3);             //Calculating the phase voltage.
w=2*%pi*f;                 //Calculating frequency in rad/sec.
wm=2*w/p;                  //Calculating speed in rad/sec.
d=Vs/wm;                   //Calculating voltage-frequency constant.
TL1=TL*(Nm/N)^2;           //Calculating load torque at 720 rpm.
ws=Nm*(%pi/30);            //Calculating speed in rad/sec.
Po=TL1*ws;                 //Calculating the output power.
Va=d*ws;                   //Calculating input voltage.
Ia=Po/(3*Va*PF);           //Calculating input current.
Vf=Va-((Ia*(1+0*%i))*(Xs*%i));    //Calculating excitation voltage.
[a1,a2]=polar(Vf);a21=a2*180/%pi;//Converting into rectangular form.
del=a21;                           //Calculating torque angle.
Tp=(3*Vf*a1)/(Xs*ws);            //Calculating pull out torque.
printf("\n\tThe load torque TL is %0.2fN-m",TL1);
printf("\n\tThe output power Po is %0.0fW",Po);
printf("\n\t(a).The input voltage Va is %0.2fV",Va);
printf("\n\t(b).The input current Ia is %0.1fA",Ia);
printf("\n\t(c).The excitation voltage Vf is %0.2f∠%0.2f°",a1,a21);
printf("\n\t(d).The torque angle del is %0.2f°",del);
printf("\n\t(e).The pull out torqe Tp is %0.2fN-m",Tp);
