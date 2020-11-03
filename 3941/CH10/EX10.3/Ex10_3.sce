//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 10.3
//Finding the Peak Currents of a Single-Phase Dual Converter.

clc;
clear;
Vs=120;                       //Supply voltage in volts.
f=60;                         //Supply frequency in Hz.
R=10;                         //Resistance in Ohm.
Lr=40;                        //Circulating inductance in milli Henry.
alp1=60;alp2=120;                 //Delay angles in degree.
w=2*%pi*f;                    //Calculating frequency in rad/sec.
Vm=sqrt(2)*Vs;                //Calculating the converter voltage.
Ir_max=((2*Vm)/(w*Lr*10^-3))*(1-cosd(alp1));//Calculating the peak circulating current.
Ip=Vm/(R);                                 //Calculating the peak load current.
Ip1=Ip+Ir_max;                            //Calculating the peak current of converter 1.
printf("\n\tThe peak circulating current Ir(max) is %0.2fA",Ir_max);
printf("\n\tThe peak load current Ip is %0.2fA",Ip);
printf("\n\tThe peak current of converter1 is %0.2fA",Ip1);
