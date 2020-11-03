//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 15.2
//Finding the Performance Parameters of a Three-Phase Induction Motor with Stator Voltage Control.

clc;
clear;
VL=460;                      //Rated voltage of the motot in volts.
f=60;                        //Frequency in Hz.
Rs=1.01;                     //Supply resistance in Ohm.
Xs=1.3;                      //Supply reactance in ohm.
Rr_dash=0.69;                     //Rotor resistance in Ohm.
Xr_dash=1.94;                    //Rotor reactace in Ohm.
Xm=43.5;                     //Motor reactance in Ohm.
TL=41;                       //Load torque at rated speed in N-m.
Nm=1740;                     //Rated speed of the motor in rpm.
N=1550;                      //Motor running speed in rpm.
Vs=VL/sqrt(3);               //Calculating phase voltage.
w=2*%pi*60;                  //Calculating frequecncy in rad/s.
ws=w*2/4;                    //Calculating speed in rad/sec.
wm=Nm*%pi/30;                //Calculating rated motor speed in rad/sec.
Km=TL/wm^2                   //Calculating motor constant.
wm1=N*%pi/30;                //Calculating running speed of motor in rad/s.
s=(ws-wm1)/ws;               //Calculating the slip.
TL1=Km*wm1^2;                //Calculating the load torque.
Ir_dash=sqrt((s*TL1*wm1)/(3*Rr_dash*(1-s)));//Calculating the rotor current.
Va=Ir_dash*sqrt((Rs+(Rr_dash/s))^2+(Xs+Xr_dash)^2);//Calculating stator supply voltage.
Zi=((-Xm*(Xs+Xr_dash))+(%i*Xm*(Rs+(Rr_dash/s))))/(Rs+(Rr_dash/s)+(%i*(Xm+Xs+Xr_dash)))
[a1 a2]=polar(Zi);a21=a2*180/%pi;//Converting complex to polar form.
Ii=Va/Zi;                        //Calculating input current.
[b1 b2]=polar(Ii);b21=b2*180/%pi;//Converting complex to polar form.
PFm=cosd(abs(b21));                    //Calculating power factor.
Pi=3*Va*PFm*b1;                     //Calculating total power.
sa1=1/3;
Ir_dash_max=ws*sqrt((4*Km*ws)/(81*Rr_dash));   //Cakulating maximum rotor current.
wa=(2/3)*ws;                           //Calculating speed at maximum current.
Ta=9*Ir_dash_max^2*(Rr_dash/ws);                //Calculating torque at maximum current.
printf("\n\t(a).The load torque TL is %0.1fN-m",TL1);
printf("\n\t(b).The no load loss Ir is %0.2fA",Ir_dash);
printf("\n\t(c).The stator supply voltage Va is %0.2fV",Va);
printf("\n\t(d).The motor input impedence Zi is %0.2f∠%0.2f°",a1,a21);
printf("\n\t    The motor input current Ii is %0.0f∠%0.2f°",b1,b21);
printf("\n\t(e).The motor power factor PFm is %0.3f(lagging)",PFm);
printf("\n\t    The total input power Pi is %0.3fW",Pi);
printf("\n\t(f).The slip at which rotor current is maximum sa is %0.3f",sa1);
printf("\n\t(g).The maximum rotor current Iri(max) is %0.1fA",Ir_dash_max);
printf("\n\t(h).The speed at the maximum current wa is %0.2frad/sec",wa);
printf("\n\t(i).The torque at maximum current Ta is %0.2fN-m",Ta);
//Some answers may change due to round-off error.
