//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 15.9
//Finding the Dimension Factors of the Control Variables.

clc;
clear;
HP=6;                       //Capacity of the motor in hp.
N=1760;                     //Motor speed in rpm.
Vcm=10;                     //Commutator voltage in volts.
VL=220;                     //Rated voltage of motor in volts.
f=60;                       //supply frequency in Hz.
PF=0.86;                    //Power factor.
eff_i=0.84;                    //Input effeciency.
Rs=0.28;                    //Stator resistance in Ohm.
Rr=0.17;                    //Rotor resistance in Ohm.
p=4;                        //Number of poles of motor.
w=2*%pi*f;                  //Calculating frequency in rad/sec.
wm=2*%pi*N/60;              //Calculating speed in rad/sec.
wr=(p/2)*wm;                //Calculating the rotor speed.
//The values of Kvf, Po, Vph, Vo, wr are taken from Example 15.8 as mentioned in the textbook.
wr_max=wr;                  //Calculating the maximum rotor speed.
Po=HP*746;                  //Calculating capacity of motor in watts.
Vph=VL/sqrt(3);             //Calculating the phase voltage.
Is=Po/(3*Vph*PF*eff_i);        //Calculating the stator current.
Vo=Is*Rs;                   //Calculating output voltage.
Kvf=(Vph-Vo)/f;             //Calculating volt-frequency constant.
k_star=Vcm/wr_max;              //Calculating the propotionality constant.
Ktg=(p/2)*k_star;               //Calculating torque constant.
Kf=1/(2*%pi*k_star);            //Calculating frequency constant.
ws1=w/(2*%pi*Kf*k_star);
Vr=2.22*(Vo+(Kvf*Kf*k_star*(ws1)));//Calculating the rotor voltage.
printf("\n\t    The speed of the motor wm is %0.2frad/sec",wm);
printf("\n\t    The maximum rotor speed wr_max is %0.3frad/sec",wr_max);
printf("\n\t    The rotor speed wr is %0.3frad/sec",wr);
printf("\n\t(a).The voltagege-frequency ratio Kvf is %0.3fV/Hz",Kvf);
printf("\n\t    The propotionality constant K* is %0.3fV/rad/s",k_star);
printf("\n\t    The torque constant Ktg is %0.3fV/rad/s",Ktg);
printf("\n\t    The frequency constant Kf is %0.0fHz/rad/s",Kf);
printf("\n\t(b).The rectifier output voltage Vr is %0.3fV",Vr);
//Some answers given in the book is wrong.
