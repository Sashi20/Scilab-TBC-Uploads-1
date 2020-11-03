//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 15.8
//Finding the Relationship between the Dc-Link Voltage and the Stator Frequency.

clc;
clear;
HP=6;                       //Capacity of the motor in hp.
VL=220;                     //Rated voltage of motor in volts.
f=60;                       //supply frequency in Hz.
PF=0.86;                    //Power factor.
eff_i=0.84;                    //Input effeciency.
Rs=0.28;                    //Stator resistance in Ohm.
Rr=0.17;                    //Rotor resistance in Ohm.
Xm=24.3;                    //Magnetizing reactance in Ohm.
Xs=0.56;                    //Stator reactance in Ohm.
Xr=0.83;                    //Rotor reactance in Ohm.
w=2*%pi*f;                  //Calculating frequency in rad/sec.
Po=HP*746;                  //Calculating capacity of motor in watts
Vph=VL/sqrt(3);             //Calculating the phase voltage.
wd=(Rr*w)/(Xs+Xr);          //Calculating the slip speed.
Is=Po/(3*Vph*PF*eff_i);        //Calculating the stator current.
Vo=Is*Rs;                   //Calculating output voltage.
Kvf=(Vph-Vo)/f;             //Calculating volt-frequency constant.
Vdc=(Vo+(Kvf*f))/0.45;      //Calculating the dc voltage.
printf("\n\t(a).The slip speed wd is %0.3frad/sec",wd);
printf("\n\t(b).The stator phase current Is is %0.3fA",Is);
printf("\n\t    The stator output voltage Vo is %0.3fV",Vo);
printf("\n\t(c).The volt-frequency constant Kvf is %0.3fV/Hz",Kvf);
printf("\n\t(d).The dc voltage Vdc is %0.2fV",Vdc);
//Some answers are changed due to roundoff error.
