//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 15.6
//Finding the Performance Parameters of a Three-Phase Induction Motor with Voltage and Frequency Control.

clc;
clear;
Po=11.2;                           //Rated capacity of the motor in kilo watts.
N=1750;                            //Rated speed of the motor in rpm.
V=460;                             //Rated voltage  of the motor in volts.
f1=60;                             //Rated frequency in Hz.
f2=30;                             //Frequency in rad/sec.
Rs=0.66;                           //Stator resistance in Ohm.
p=4;                               //Number of poles of motor.
Rr_dash=0.38;                          //Rotor resistance in Ohm
Xs=1.14;                           //Stator reactance in Ohm.
Xr_dash=1.71;                          //Rotor reactance in Ohm.
Xm=33.2;                           //Magnetizing reactance in Ohm.
Vs=V/sqrt(3);                      //Calculating the suply voltage.
w=2*%pi*f1;                         //Calculating frequency in rad/sec.
wb=2*w/p;                          //Calculating the synchronous speed.
//At frequency f=60Hz;
d=Vs/wb;                           //Calculating voltage to frequency ratio.
Va=d*wb;                           //Calculating motor running voltage.
sm=Rr_dash/sqrt(Rs^2+(Xs+Xr_dash)^2);      //Calculting slip of the motor.
wm=wb*(1-sm);                      //Calculating the motor speed.
Tm=(3*Vs^2)/(2*wb*(Rs+sqrt(Rs^2+(Xs+Xr_dash)^2)));//Calculating the maximum torque.
//At frequency f=30Hz;
ws1=2*2*%pi*30/p;                       //Calculating frequency in rad/sec.
bet=f2/f1;                                //Calculating the frequency ratio.
Va1=d*ws1                               //Clculating motor voltage.
sm1=Rr_dash/sqrt(Rs^2+(bet^2*(Xs+Xr_dash)^2));   //Calculting slip of the motor.
wm1=ws1*(1-sm1);                        //Calculating the spees
Tm1=(3*Va1^2)/(2*ws1*(Rs+sqrt(Rs^2+(bet^2*(Xs+Xr_dash)^2))));//Calculating the maximum torque.
//At frequency f=60Hz;
sm2=Rr_dash/(Xs+Xr_dash);                             //Calculating the slip.
wm2=wb*(1-sm2);                                      //Calculating motor speed.
Tm2=((3*Va^2)/(2*wb*(Xs+Xr_dash)));                  //Calculating maximum torque.
//At frequency f=30Hz;
sm3=(Rr_dash/bet)/(Xs+Xr_dash);                     //Calculating the slip.
wm3=ws1*(1-sm3);                                   //Calculating the speed.
Tm3=((3*Va^2)/(2*wb*(Xs+Xr_dash)));                //Calculating maximum torque.
printf("\n\t(a).At frequency f=%iHz",f1);
printf("\n\t    The frequency ws is %0.1frad/sec",wb);
printf("\n\t    The voltage Va is %0.2fV",Va);
printf("\n\t    The slip sm is %0.4f",sm);
printf("\n\t    The speed wm is %0.2frad/sec",wm);
printf("\n\t    The maximum torque Tm is %0.2fN-m",Tm);
printf("\n\t    At frequency f=%iHz",f2);
printf("\n\t    The frequency ws is %0.2frad/sec",ws1);
printf("\n\t    The voltage Va is %0.2fV",Va1);
printf("\n\t    The slip sm is %0.4f",sm1);
printf("\n\t    The speed wm is %0.2frad/sec",wm1);
printf("\n\t    The maximum torque Tm is %0.2fN-m",Tm1);
printf("\n\t(b).At frequency f=%iHz",f1);
printf("\n\t    The frequency ws is %0.1frad/sec",wb);
printf("\n\t    The voltage Va is %0.2fV",Va);
printf("\n\t    The slip sm is %0.4f",sm2);
printf("\n\t    The speed wm is %0.2frad/sec",wm2);
printf("\n\t    The maximum torque Tm is %0.2fN-m",Tm2);
printf("\n\t    At frequency f=%iHz",f2);
printf("\n\t    The frequency ws is %0.1frad/sec",ws1);
printf("\n\t    The voltage Va is %0.2fV",Va1);
printf("\n\t    The slip sm is %0.4f",sm3);
printf("\n\t    The speed wm is %0.2frad/sec",wm3);
printf("\n\t    The maximum torque Tm is %0.2fN-m",Tm3);
//Some answers may be changed due to round-off error.