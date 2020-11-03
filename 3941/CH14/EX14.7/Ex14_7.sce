//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 14.7
//Finding the Performance of a Three-Phase Full-Converter Drive with Field Control.

clc;
clear;
P=20;                        //Rated Capacity of the motor in hp.
V=300;                       //Rated voltage in volts.
N=900;                       //Rated speed of the motor.
VL=208;                      //Load voltage in volts.
f=60;                        //Frequency in Hz.
Ra=0.25;                     //Armature resistance in Ohm.
Rf=145;                      //Field resistance in Ohm.
Kv=1.2;                      //Motor voltage constant V/Arad/s.
Td=116;                      //Developed torque in Nm.
Vp=VL/sqrt(3);               //Calculating phase voltage.
Vm=sqrt(2)*Vp;               //Calculating converter voltage.
w=(N*%pi)/30;                //Calculating the spped in rad/sec.
Vf=(3*sqrt(3)*Vm)/%pi;       //Calculating field voltage.
If=Vf/Rf;                    //Calculating field current.
Ia=Td/(Kv*If);               //Calculating armature current.
Eg=Kv*If*w;                  //Calculating back emf.
Va=Eg+(Ia*Ra);               //Calculating armature volatge.
alpa=acosd((Va*%pi)/(3*sqrt(3)*Vm));//Calculating delay angle.
//When alpa=0;
Va1=(3*sqrt(3)*Vm)/%pi;           //Calculating armature current.
Eg1=Va1-(Ia*Ra);                  //Calculating back emf.
w1=Eg1/(Kv*If);                   //Calculating the spped in rad/sec.
//When speed N=1800 rpm;
N2=1800;                          //Speed in rpm.
w2=(N2*%pi)/30;                   //Calculating the speed in rad/sec.
If2=Eg1/(Kv*w2);                  //Calculating field current.
Vf2=If2*Rf;                       //Calculating field voltage.
alpf2=acosd((Vf2*%pi)/(3*sqrt(3)*Vm));//Calculating the delay angle.
printf("\n\tVp=%0.0fV\n\tVm=%0.1fV",Vp,Vm);
printf("\n\t(a).The field voltage Vf is %0.1fV",Vf);
printf("\n\t    The field current If is %0.3fA",If);
printf("\n\t    The armature current Ia is %0.1fA",Ia);
printf("\n\t    The back emf Eg is %0.2fV",Eg);
printf("\n\t    The armature voltage Va is %0.2fv",Va);
printf("\n\t    The delay angle alpa is %0.2f°",alpa);
printf("\n\t(b).When alpa=0;");
printf("\n\t    The armature voltage Va is %0.1fV",Va1);
printf("\n\t    The back emf Eg is %0.2fV",Eg1);
printf("\n\t    The speed in rad/sec w is %0.2frad/sec",w1);
printf("\n\t(c).When speed is N=1800rpm;");
printf("\n\t    The field current If is %0.3fA",If2);
printf("\n\t    The field voltage Vf is %0.2fV",Vf2);
printf("\n\t    The delay angle alpf is %0.2f°",alpf2);
//Some answers may be change due to round off error.

