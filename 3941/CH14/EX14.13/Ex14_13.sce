//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 14.13
//Finding the Speed and Torque Response of a Converter-Fed Drive.

clc;
clear;
P=50;                         //Rated capacity of the motor in KW.
V=240;                        //Rated voltage of the motor  in volts.
N=1700;                       //Rated speed of the motor in rpm.
If=1.4;                       //Field current in ampere.
Kv=0.91;                      //Back emf constant in V/A rad/sec.
Rm=0.1;                       //Armature resistance in Ohm.
B=0.3;                        //Viscous friction constant in N-m/rad/sec.
K1=95;                        //The amplification of the speed sensor in mV/rad/sec.
K2=100;                       //The gain of the power controller.
w_rated=(N*%pi)/30;           //Calculating the rated speed in rad/sec.
TL=(P*10^3)/w_rated;          //Calculating the rated torque.
Va=(w_rated*((Rm*B)+(Kv*If)^2))/(Kv*If);//Calculating the armature voltage.
Vb=K1*w_rated*10^-3;                    //Calculating the feedback voltage.
Vr=(Va+(Vb*K2))/K2;                     //Calculating the reference voltage.
//When del_TL=TL;
del_w=-(Rm*TL)/((Rm*B)+(Kv*If)^2+(K1*10^-3*K2*Kv*If));//Calculating the change in speed.
w=w_rated+del_w;No=(w*30)/%pi                          //Calculating speed at rated torque
//When del_TL=1.1TL;
del_TL=1.1*TL;                                       //Calcualting the change in torque.
del_w1=-(Rm*del_TL)/((Rm*B)+(Kv*If)^2+(K1*10^-3*K2*Kv*If));//Calculating the change in speed.
w1=w_rated+del_w1;N1=(w1*30)/%pi                        //Calculating the speed.
//When del_Vr=-0.1Vr;
del_Vr=-0.1*Vr;                                      //Calculating change in reference voltage.
del_w2=(K2*Kv*If*del_Vr)/((Rm*B)+(Kv*If)^2+(K1*10^-3*K2*Kv*If));//Calculating the change in speed.
w2=w_rated+del_w2;N2=(w2*30)/%pi                              //Calculating the speed.
w3=w_rated+del_w1+del_w2;N3=(w3*30)/%pi;                        //Calculating motor speed using superposition.
//When del_Vr=2.31V;
del_Vr3=2.31;                                        //Change in reference voltage.
del_w3=(K2*Kv*If*del_Vr3)/((Rm*B)+(Kv*If)^2);N3=(del_w3*30)/%pi;//Calculating change in speed.
del_w4=-(Rm*TL)/((Rm*B)+(Kv*If)^2);                    //Calculating no load speed.
w4=w_rated+del_w4;N4=(w4*30)/%pi;                    //Calculating the full load speed.
reg=(N3-N4)/N4;                                   //Calculating the speed regulation.
reg1=(N3-No)/No;                                  //Calculating speed regulation.
printf("\n\tThe rated speed W_rated is %0.2frad/sec",w_rated);
printf("\n\t(a).The rated torque TL is %0.2fN-m",TL);
printf("\n\t(b).At rated speed armature voltage Va is %0.2fV",Va);
printf("\n\t    The feedback voltage Vb is %0.2fV",Vb);
printf("\n\t    The reference voltage Vr is %0.3fV",Vr);
printf("\n\t(c).If the referenc voltage is unchanged,");
printf("\n\t    The change in speed del_w is %0.2frad/s",del_w);
printf("\n\t    The speed at rated torque w is %0.2frad/sec = %0.2frpm",w,No);
printf("\n\t(d).If the torque is incersed by 10 percent,");
printf("\n\t    The change in load torque del_TL is %0.2fN-m",del_TL);
printf("\n\t    The change in speed del_w is %0.3frad/s",del_w1);
printf("\n\t    The motor speed w is %0.3frad/s = %0.1frpm",w1,N1);
printf("\n\t(e).If the reference voltage is decresed by 10 percent,");
printf("\n\t    The change in refrence voltage del_Vr is %0.2fV",del_Vr);
printf("\n\t    The change in speed del_w is %0.1frad/sec",del_w2);
printf("\n\t    The speed of the motor w is %0.2frad/s = %0.1frpm",w2,N2);
printf("\n\t(f).If the torque is incresed and referce voltage is decreased by 10 percent respecively,");
printf("\n\t    The motor speed can be obtained by superpostion as w is %0.0frad/s =%0.1frpm",w3,N3);
printf("\n\t(g).If refrence voltage del_Vr is %0.2fV,",del_Vr3);
printf("\n\t    The no load  speed del_w is %0.2frad/s = %0.0frpm",del_w3,N3);
printf("\n\t    The chnge in speed at full load torque del_w is %0.2frad/s",del_w4);
printf("\n\t    The full load speed w is %0.2frad/s = %0.1frpm",w4,N4);
printf("\n\t    The speed regulation with open loop control is %0.2fpercent",reg*100);
printf("\n\t(h).The speed regulation with closed loop control is %0.2fpercent",reg1*100);
