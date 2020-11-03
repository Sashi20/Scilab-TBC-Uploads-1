//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 11.6
//Finding the Performance Parameters of a Single-Phase Cycloconverter.

clc;
clear;
Vs=120;                      //Supply voltage in volts.
fs=60;                       //Frequency in Hz.
R=5;                         //Load resistance in Ohm.
L=40;                        //Load inductance in milli Henry.
fo=20;                       //Frequency of the output voltage.
alp=(2*%pi)/3;                //Delay angle in radians.
wo=2*%pi*fo;                 //Calculating frequency in rad/sec.
XL=wo*L*10^-3;               //Calculating the reactance.
Vo=Vs*sqrt((1/%pi)*(%pi-alp+(sin(2*alp)/2)));//Calculating rms output voltage.
Z=sqrt(R^2+(wo*L*10^-3)^2);              //Calculating input impedence.
theta=atan((wo*L*10^-3)/R);              //Calculating power angle.
Io=Vo/Z;                                 //Calculating output current.
Ip=Io/sqrt(2);                           //Calculating rms current of each convrter.
IR=Ip/sqrt(2);                           //Calculating rms current of each thyristor.
Is=Io;                                   //Calcuating rms input current.
VA=Vs*Is;                                //Calculating VA rating of converter.
Po=Vo*Io*cos(theta);                         //Calculating output power.
PF=Po/(Vs*Is);                           //Calculating power factor.
printf("\n\t(a).The rms output voltage Vo is %0.0fV",Vo);
printf("\n\t(b).The input impedence Z is %0.2fΩ",Z);
printf("\n\t    The angle ang is %0.1f°",theta*180/%pi);
printf("\n\t    The load current Io is %0.2fA",Io);
printf("\n\t    The rms current through each converter Up is %0.2fA",Ip);
printf("\n\t    The rms current through each thyristor IN IR is %0.2fA",IR);
printf("\n\t(c).The rms input current Is is %0.2fA",Is);
printf("\n\t    The VA rating is %0.1fVA",VA);
printf("\n\t    The output power Po is %0.2fW",Po);
printf("\n\t    The power factor PF is %0.3f(lagging)",PF);
//Some answers may change due to round-off error.
