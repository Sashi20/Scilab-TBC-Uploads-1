//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 15.7
//Finding the Performance Parameters of a Three-Phase Induction Motor with Current Control.

clc;
clear;
Po=11.2;                           //Rated capacity of the motor in kilo watts.
N=1750;                            //Rated speed of the motor in rpm.
V=460;                             //Rated voltage  of the motor in volts.
f1=60;                             //Rated frequency in Hz.
f2=40;                             //Supply frequency in Hz.
Rs=0.66;                           //Stator resistance in Ohm.
p=4;                               //Number of poles of motor.
Rr_dash=0.38;                          //Rotor resistance in Ohm
Xs=1.14;                           //Stator reactance in Ohm.
Xr_dash=1.71;                          //Rotor reactance in Ohm.
Xm=33.2;                           //Magnetizing reactance in Ohm.
Ii=20;                             //Input current to the inverter.
Td=55;                             //Developed torque in N-m.
Va_rated=460/sqrt(3);              //Calculating the rated phase voltage.
w=2*%pi*f2;                        //Calculating supply frequency in rad/sec.
ws=2*w/p;                          //Calculating frequency.
Xs1=Xs*(f2/f1);Xr=Xr_dash*(f2/f1);   //Calculating the reactance.
Xm1=Xm*(f2/f1);                    //Calculating magnetizing reactance.
sm=Rr_dash/sqrt(Rs^2+(Xm1+Xr+Xs1)^2);//Calculting slip of the motor.
Tm=((3*Xm1^2)/(2*ws*(Xm1+Xr)))*Ii^2;//Calculating maximum torque.
//Calculating the slip.
R=poly(0,"Rr");
RR=R^2-83.74*R+578.04;              //Equation obtained by solving the Eq 15.92.
Rr=roots(RR);a1=Rr(1,1);a2=Rr(2,1);
s1=Rr_dash/a1;s2=Rr_dash/a2;       //Calculating the approximate values of slip.
wm=ws*(1-s2);                         //Calculating the speed.
Ri=(Xm1^2*(Rs+(Rr_dash/s2)))/((Rs+(Rr_dash/s2))^2+(Xm1+Xs1+Xr)^2);//Calculating the input resistance.
Xi=(Xm1*((Rs+(Rr_dash/s2))^2+((Xs1+Xr)*(Xm1+Xs1+Xr))))/((Rs+(Rr_dash/s2))^2+(Xm1+Xs1+Xr)^2);//Calculating the input reactance.
theta_m=atan(Xi/Ri);                    //Calculating the angle.
Zi=sqrt(Ri^2+Xi^2);                 //Calculating the input impedence.
Va=Zi*Ii;                           //Calcuating the input voltage.
PFm=cos(theta_m);                        //Calculating the power factor.
printf("\n\t(a).The maximum slip sm is %0.4f",sm);
printf("\n\t    The maximum torque Tm is %0.2fN-m",Tm);
printf("\n\t(b).The slip s is %00.5f or %0.4f",s1,s2);
printf("\n\t    The slected value of slip s is %0.4f",s2);
printf("\n\t(c).The speed wm is %0.2frad/sec",wm);
printf("\n\t(d).The input resistance Ri is %0.2f Ohm",Ri);
printf("\n\t    The input reactance Xi is %0.2f Ohm",Xi);
printf("\n\t    The angle theta_m is %0.1f°",theta_m*180/%pi);
printf("\n\t    The input impedence Zi is %0.2f Ohm",Zi);
printf("\n\t    The input voltage Va is %0.1fV",Va);
printf("\n\t(e).The power factor PFm is %0.3f(lagging)",PFm)
//Some answers are changed due to round off error.
