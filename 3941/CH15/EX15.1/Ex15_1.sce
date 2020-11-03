//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 15.1
//Finding the Performance Parameters of a Three-Phase Induction Motor.

clc;
clear;
VL=460;                          //Rated voltage of the motor.
f=60;                            //Frequency in Hz.
Rs=0.42;                         //Supply Resistance in Ohm.
Rr_dash=0.23;                        //Reistnace of motor in Ohm.
Xr_dash=0.82;                        //Reactance in Ohm.
Xm=22;                           //Reactance of motor in Ohm.
P_noload=60;                     //No load loss in Watts.
N=1750;                          //Rotor speed in rpm.
Vs=VL/sqrt(3);                   //Calculating the phase voltage.
w=2*%pi*f;                       //Calculating the frequency in rad/sec.
wm=(N*%pi)/30;                   //Calculating the speed in rad/sec.
ws=(2*w)/4;                      //Calculating synchronous speed.
s=(ws-wm)/ws;                    //Calculating the slip.
Zi=((-Xm*(Xr_dash+Xr_dash))+(%i*Xm*(Rs+(Rr_dash/s))))/(Rs+(Rr_dash/s)+(%i*(Xm+Xr_dash+Xr_dash)));//Calculating the input impedence.
[a1 a2]=polar(Zi);a21=a2*180/%pi;//Converting complex to polar form.
Ii=Vs/Zi;                        //Calculating input current.
[b1 b2]=polar(Ii);b21=b2*180/%pi;//Converting complex to polar form.
PFm=cos(b21);                    //Calculating power factor.
Pt=3*Vs*(b1)*0.858;                  //Calculating total power.
PFs=PFm;                         //Calculating power factor of input supply.
Ir1=Vs/sqrt((Rs+(Rr_dash/s))^2+(Xr_dash+Xr_dash)^2);//Calculating rms root current.
Pg=(3*Ir1^2*Rr_dash)/s;                       //Calculating the gap power.
Pru=3*Ir1^2*Rr_dash;                        //Calculating rotor copper loss.
Psu=3*Ir1^2*Rs;                         //Calculating stator copper loss.
Td=Pg/ws;                               //Calculating developed torque.
Po=Pg-Pru-P_noload;                     //Calculating output power.
eff=(Pt-Po)/Po;                            //Calculating the effeciency.
Irs=Vs/((Rs+Rr_dash)^2+(Xr_dash+Xr_dash)^2)^0.5;     //Calculating starting current.
Ts=(3*Rr_dash*Irs^2)/ws;                    //Calculating starting torque.
sm=Rr_dash/((Rs)^2+(Xr_dash+Xr_dash)^2)^0.5;        //Calculating slip for maximum torque.
Tmm=(3*Vs^2)/(2*ws*(Rs+(sqrt(Rs^2+(Xr_dash+Xr_dash)^2))));//Calculating maximum torque developed.
Tmr=-(3*Vs^2)/(2*ws*(-Rs+(sqrt(Rs^2+(Xr_dash+Xr_dash)^2))));//Calculating maximum regenerative torque.
sm1=Rr_dash/(Xr_dash+Xr_dash);                     //Calculating slip for maximum torque by negleting supply resistance Rs.
Tmm1=(3*Vs^2)/(2*ws*(sqrt((Xr_dash+Xr_dash)^2)));//Calculating maximum torque developed.
Tmr1=Tmm1;                             //Calculating regenerative motor torque.
printf("\n\tThe phase voltage Vs is %0.2fV",Vs);
printf("\n\tFrequency in rad/sec w is %0.0frad/s",w);
printf("\n\tThe motor speed in rad/sec is %0.2frad/s",wm);
printf("\n\t(a).The synchronous speed ws is %0.1frad/s.",ws);
printf("\n\t(b).The slip s is %0.3f",s);
printf("\n\t(c).The input impedence Zi is %0.3f∠%0.2f°",a1,a21);
printf("\n\t    The input current Ii is %0.2f∠%0.2f°A",b1,b21);
printf("\n\t(d).The power factor of the motor PFm is %0.2f(lagging)",(PFm));
printf("\n\t    The total power Pt is %0.0fW",Pt);
printf("\n\t(e).The power factor of the input supply Pfs is %0.3f(lagging)",PFs);
printf("\n\t    The rms rotor current Ir1 is %0.1fA",Ir1);
printf("\n\t    The gap power Pg is %0.0fW",Pg);
printf("\n\t(g).The rotor copper loss Pru is %0.1fW",Pru);
printf("\n\t(h).The sator copper loss Psu is %0.0fW",Psu);
printf("\n\t(i).The developed torque Td is %0.1fN-m",Td);
printf("\n\t(j).The output power Po is %0.0fW",Po);
printf("\n\t    The effeciency eff is %0.2fpercent",eff*100);
printf("\n\t(k).The starting rms rotor current Irs is %0.1fA",Irs);
printf("\n\t    The starting torque Ts is %0.1fN-m",Ts);
printf("\n\t(l).The slip for maximum torque sm is %0.4f",sm);
printf("\n\t(m).The maximum developed torque Tmm is %0.2fN-m",Tmm);
printf("\n\t(n).The maximum regenerative torque Tmr is %0.2fN-m",Tmr);
printf("\n\t(o).If the suply resistance Rs is negleted;");
printf("\n\t    The slip of maximum torque sm is %0.4f",sm1);
printf("\n\t    The maximum torque developed Tmm = -Tmr is %0.1fN-m",Tmm1);
//Answers are changed due to round off error.
