//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 3.16
//Finding the Effect of Line Inductance on the Output Voltage of a Rectifier.

clc;
clear;
V=208;                        //Supply voltage in volts.
f=60;                         //Suppky frequency in Hz.
Idc=60;                       //Average load current in ampere.
Lc=0.5;                       //Inductance per phase in milli Henry.
Vs=V/sqrt(3);                 //Caculating voltage per phase.
Vm=sqrt(2)*Vs                 //Calculating phase voltage.
Vdc=1.654*Vm;                 //Calculating average output voltage.
Vx=6*Idc*Lc*10^-3*f;          //Calculating the reduction of output voltage.
Vo=Vdc-Vx;                    //Calculating effectinve output voltage.
printf("\n\tThe average output voltage Vdc is %0.2fV",Vdc);
printf("\n\tThe rduction in output voltage Vx is %0.1fV",Vx);
printf("\n\tThe effective output voltage Vo is %0.2fV",Vo);
//Some answers are changed due to round-off error.
