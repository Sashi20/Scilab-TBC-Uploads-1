//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 11.1
//inding the Performance Parameters of a Single-Phase Full-Wave Controller

clc;
clear;
R=10;                        //Resistance in Ohm.
Vs=120;                      //Supply volatage in volts.
f=60;                        //Frequency in Hz.
alp=%pi/2;                        //Delay angle in degree.
Vm=sqrt(2)*Vs;               //Calculating the converter voltage.
Vo=Vs/sqrt(2);               //Calculating rms value of output voltage.
Io=Vo/R;                     //Calculating rms value of load current.
Po=Io^2*R;                   //Calculating load power.
VA=Vs*Io;                    //Calculating the VA rating.
PF=Po/VA;                    //Calculating the power factor.
IA=(sqrt(2)*Vs*(cos(alp)+1))/(2*%pi*R);//Calculating average thyristor current.
IR=(Vs/(sqrt(2)*R))*(sqrt((1/%pi)*(%pi-alp+(sin(2*alp)/2))));//Calculating rms value of thrysitor current.
printf("\n\t(a).The rms output voltage Vo is %0.2fV",Vo);
printf("\n\t(b).The rms value of load current Io is %0.3fA",Io);
printf("\n\t    The load power Po is %0.2fW",Po);
printf("\n\t    The input rating VA is %0.1fW",VA);
printf("\n\t    The input power factor is %0.3f(lagging)",PF);
printf("\n\t(c).The average  thyristor current IA is %0.1fA",IA);
printf("\n\t(d).The rms value of thyristor current IR is %iA",IR);
////Answers may vary due to round-off error.
