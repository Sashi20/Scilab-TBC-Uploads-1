//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 11.4
//Finding the Performance Parameters of a Three-Phase Delta-Connected Controller.

clc;
clear;
R=10;                                //Resistance in Ohm.
Vs=208;                              //Supply voltage in volts.
f=60;                                //Frequency in Hz.
alp=2*%pi/3;                           //Delay angle in radians.
Im=sqrt(2)*Vs/R;                     //Calculating peak value of phase current.
Vo=Vs*sqrt((1/%pi)*(%pi-alp+(sin(2*alp)/2)));//Calculating output voltage from Eq 11.22.
Iab=9.2;Ia=13.01;                    //Fundamental component of current.
Po=3*Iab^2*R;                        //Calculating output power.
VA=3*Vs*Iab;                         //Calculating the VA rating.
PF=Po/VA;                            //Calculating the power factor.
IR=Iab/sqrt(2);                      //Calculating the thyristor current.
printf("\n\t(a).The output volatage Vo is %0.0fV",Vo);
printf("\n\t(c).The output power Po is %0.0fW",Po);
printf("\n\t    The VA rating is %0.0f",VA);
printf("\n\t    The power factor PF is %0.3f(lagging)",PF);
printf("\n\t(e).The thyristor current IR is %0.1fA",IR);
//Some answers are varied due to round-off error.
