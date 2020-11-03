//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 15.3
//Finding the Performance Parameters of a Three-Phase Induction Motor with Rotor Voltage Control.

clc;
clear;
V=460;                           //Three phase supply voltage in volts.
f=60;                            //Frequency in Hz.
p=6;                             //Number of poles of the motor.
Rs=0.041;                        //Stator resistance in Ohm.
Rr_dash=0.044;                       //Rotor resistance in Ohm.
Xs=0.29;                         //Stator reactance in Ohm.
Xr_dash=0.044;                       //Rotor reactance in Ohm.
Xm=6.1;                          //Motor resitance in Ohm.
nm=0.9;                          //Ratio of stator to rotor windidng.
T=750;                           //Load torque in N-m.
N=1175;                          //Rated Motor speed in rpm.
N1=1050;                         //Maximum running speed of motor in rpm.
Nm=800;                          //Minimum speed of motor in rpm.
Vs=V/sqrt(3);                    //Calculating phase voltage.
w=2*%pi*f;                       //Calculating frequency in rad/sec.
ws=2*w/p;                        //Calculating the frequency per cycle.
wm=Nm*%pi/30;                    //Calculating mimimum motor speed in rad/s.
//At speed N=800 rpm.
TL=T*(Nm/N)^2;                   //Calculating load torque at mimimum speed.
Id=(TL*ws)/(2.3394*Vs*nm);       //Calculating the inductor current.
R=(1-(wm/ws))*((2.3394*Vs*nm)/(Id));//Calculating the resistance at minimum speed.
//At speed N=1050 rpm.
TL1=T*(N1/N)^2;                 //Calculating the load torque.
Id1=(TL1*ws)/(2.3394*Vs*nm);    //Calculating the inductor current.
wm1=N1*%pi/30;                  //Calculating the running speed in rad/sec.
k=1-((1-(wm1/ws))*((2.3394*Vs*nm)/(Id1*R)));//Calculating the duty cycle.
s=(ws-wm1)/ws;                              //Calculating the slip.
Vd=2.3394*s*Vs*nm;                         //Calculating the inductor voltage.
P1=Vd*Id1;                                  //Calculating the power loss.
Po=TL1*wm1;                                //Calculating the ouptut power.
Ir1=sqrt(2/3)*Id1*nm;                      //Calculating the rms stator current.
Psu=3*Rs*Ir1^2;                            //Calculating stator copper loss.
Pru=3*Rr_dash*Ir1^2;                           //Calculating rotor copper loss.
Pi=Po+P1+Pru+Psu;                          //Calculating input power.
eff=Po/Pi;                                 //Calculating the effeciency.
Ir1_dash=0.7797*Id1*nm;                        //Calculating fundamental component of rotor current.
Im=Vs/Xm;                                  //Calculating magnetizing current.
Ii1=sqrt(Ir1_dash^2+Im^2);                     //Calculating fundamental component of input current.
theta_m=-atand(Im/Ir1_dash);                          //Calculating power factor angle.
PF=cos((theta_m));                           //Calculating the power factor.
printf("\n\t    At N=800 rpm");
printf("\n\t(a).The load torque at 800 rpm TL is %0.2fN-m",TL);
printf("\n\t    The inductor current Id is %0.2fA",Id);
printf("\n\t    The resitance at minimum speed R is %0.4fΩ",R);
printf("\n\t    At N=1050 rpm");
printf("\n\t(b).The load torque TL is %0.2fN-m",TL1);
printf("\n\t    The inductor current Id is %0.1fA",Id1);
printf("\n\t(c).The duty cycle k is %0.3f",k);
printf("\n\t(d).The slip s is %0.3f",s);
printf("\n\t    The inductor voltage Vd is %0.1fV",Vd);
printf("\n\t(e).The power loss P1 is %0.0fW",P1);
printf("\n\t    The output power Po is %0.0fW",Po);
printf("\n\t    The rms rotor current of stator Ir1 is %0.1fA",Ir1);
printf("\n\t    The rotor copper loss Pru is %0.0fW",Pru);
printf("\n\t    The sator copper loss Psu is %0.0fW",Psu);
printf("\n\t    The input power Pi is %0.0fW",Pi);
printf("\n\t    The effeciency is %0.0fpercentage",eff*100);
printf("\n\t(f).The fundamental component of rotor current reffered to stator Ir1_dash is %0.2fA",Ir1_dash);
printf("\n\t    The magnetizing current Im is %0.2fA",Im);
printf("\n\t    The fundamental component of the input current Ii1 is %0.0fA",Ii1);
printf("\n\t    The PF angle ang_m is %0.2f degree",theta_m);
printf("\n\t    The power factor PF is %0.3f(lagging)",PF);
//Some answers are changed due to round off error.
