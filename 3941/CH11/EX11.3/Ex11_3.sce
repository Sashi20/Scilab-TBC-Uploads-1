//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 11.3
//Finding the Performance Parameters of a Three-Phase Full-Wave Controller.

clc;
clear;
R=10;                           //Load resistance in Ohm.
VL=208;                         //Line to line input voltage in volts.
f=60;                           //Frequency in Hz.
alp=%pi/3;                        //Delay angle in radians.
Vs=VL/sqrt(3);                  //Calculating th phase voltage.
Vo=sqrt(6)*Vs*(sqrt((1/%pi)*((%pi/6)-(alp/4)+(sin(2*alp)/8))));//Calculating the rms output voltage from the Eq 11.19.
Ia=Vo/R;                                         //Calculating rms load current.
Po=3*Ia^2*R;                                     //Calculating output power.
VA=3*Vs*Ia;                                      //Calculating the input VA rating.
PF=Po/VA;                                        //Calculating the power factor.
printf("\n\t(a).The rms phase output voltage Vo is %0.2fV",Vo);
printf("\n\t(b).The rms phase load current Ia is %0.2fA",Ia);
printf("\n\t    The output power Po is %0.2fW",Po);
printf("\n\t    The input Volt ampere rating VA is %0.1fVA",VA);
printf("\n\t    The power factor PF is %0.2f(lagging)",PF);
//Answers are changed due to round off error.
