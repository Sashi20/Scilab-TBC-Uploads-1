//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 15.4
//Finding the Performance Parameters of a Static Kramer Drive.

clc;
clear;
nc=0.40;                          //Turns ratio of converter voltage.
TL=750;                           //Load torque in N-m.
N=1175;                           //Rated Speed in rpm.
N1=1050;                          //Running speed of motor in rpm.
V=460;                           //Three phase supply voltage in volts.
f=60;                            //Frequency in Hz.
Rs=0.041;                        //Stator resistance in Ohm.
Rr_dash=0.044;                       //Rotor resistance in Ohm.
Xs=0.29;                         //Stator reactance in Ohm.
Xr_dash=0.044;                       //Rotor reactance in Ohm.
Xm=6.1;                          //Motor resitance in Ohm.
nm=0.9;                          //Ratio of stator to rotor windidng.
p=6;                             //Number of poles of the motor.
Vs=V/sqrt(3);                    //Calculating phase voltage.
w=2*%pi*f;                       //Calculating frequency in rad/sec.
ws=2*w/p;                        //Calculating the frequency per cycle.
wm=N1*%pi/30;                    //Calculating mimimum motor speed in rad/s.
s=(ws-wm)/ws;                    //Calculating the slip.
//At speed N=1050rpm;
TL1=TL*(N1/N)^2;                 //Calculating the load torque.
Id1=(TL1*ws)/(2.3394*Vs*nm);     //Calculating the inductor current.
Vd1=2.3394*s*Vs*nm;              //Calculating inductor voltage.
alp=acosd(((wm/ws)-1)*(nm/nc));    //Calculating the delay angle.
P1=Vd1*Id1;                      //Calculating the power feedback.
Po=TL1*wm;                       //Calculating the output power.
Ir_dash=sqrt(2/3)*Id1*nm;            //Calculating the rms rotor current refferd to stator.
Pru=3*Rr_dash*Ir_dash^2;                 //Calculating rotor copper loss.
Psu=3*Rs*Ir_dash^2;                  //Calcuulating stator copper loss.
Pi=Po+Pru+Psu;                   //Calculating input power.
eff=Po/Pi;                       //Calculating the efficiency.
Ir_dash1=0.7798*Id1*nm;              //Calculating fundamental component on rotor current due to stator current.
Im=Vs/Xm;                        //Calculating magnetizing current.
Ii1=sqrt(Ir_dash1^2+Im^2);           //Calculating fundamental component of input current.
ang_m=-atand(Im/Ir_dash1);              //Calculating power factor angle.
a1=Ii1*cos(ang_m);a2=Ii1*sin(ang_m);//Converting to polar form.
Ii2=sqrt(2/3)*Id1*nc;          //Calculating the rms current feedback to supply.
b1=Ii2*cos(-alp);b2=Ii2*sin(-alp);disp(complex(b1,b2))
Ii=complex(a1,a2)+complex(b1,b2);disp((Ii))                      //Calculating effective input current.
[c1,c2]=polar(Ii);c21=c2*180/%pi; //Converting to polar form.
PF=cos(c21);                      //Calculating power factor.
printf("\n\tThe slip s is %0.3f",s);
printf("\n\tThe load torque TL is %0.2fN-m",TL1);
printf("\n\t(a).The inductor current Id is %0.1fA",Id1);
printf("\n\t(b).The inductor voltage Vd is %0.1fV",Vd1);
printf("\n\t(c).The delay angle alp is %0.1f°",alp);
printf("\n\t(d).The power feedback P1 is %0.0fW",P1);
printf("\n\t    The output power Po is %0.0fW",Po);
printf("\n\t    The rotor current referred to stator Ir_dash is %0.1fA",Ir_dash);
printf("\n\t    The rotor copper loss Pru is %0.0fW",Pru);
printf("\n\t    The stator copper loss Psu is %0.0fW",Psu);
printf("\n\t    The total power Pi is %0.0fW",Pi);
printf("\n\t    The efficiency is %0.0fpercentage",eff*100);
printf("\n\t(e).The rotor current reffered to stator Ir_dash1 is %0.2fA",Ir_dash1);
printf("\n\t    The magnetizing current Im is %0.2fA",Im);
printf("\n\t    The fundamental component of input current Ii1 is %0.2f∠%0.2f°",Ii1,ang_m);
printf("\n\t    The rms current feedback to supply Ii2 is %0.2f∠%0.2f°",Ii2,-alp);
printf("\n\t    The effective current of the drive Ii is %0.2f∠%0.2f°",Ii,c21);
printf("\n\t    The input power power factor PF is %0.3f(lagging)",PF);
//Some answers may be changed due to round-off error.
