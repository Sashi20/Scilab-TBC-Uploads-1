//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 14.3
//Finding the Performance Parameters of a Single-Phase Semiconverter Drive

clc;
clear;
Vs=208;                          //Supply voltage in volts.
f=60;                            //Frequency in Hz.
Ra=0.25;                         //Armature resistance in Ohm.
Rf=147;                          //Field resistance in Ohm.
Kv=0.7032;                       //Motor voltage constant V/Arad/sec.
TL=45;                           //Load torque in Nm.
N=1000;                          //Motor speed in rpm.
Vm=sqrt(2)*Vs;                   //Calculating Phase voltage.
Td=TL;                           //Calculating developed torque.
w=(N*%pi)/30;                    //Calculating resonant frequency.
Vf=(2*Vm)/%pi;                   //Calculating field voltage.
If=Vf/Rf;                        //Calculating field current.
Ia=Td/(Kv*If);                   //Calculating armature current.
Eg=Kv*w*If;                      //Calculating back emf.
Va=Eg+(Ia*Ra);                   //Calculating armature voltage.
alpha_a=acosd(((Va*%pi)/Vm)-1);       //Calculating the delay angle.
Po=Va*Ia;                        //Calculating output power.
Isa=Ia*sqrt((180-alpha_a)/180);       //Calculatung the rms input current.
VI=Vs*Isa;                       //Calculating the input VA rating.
PF=Po/VI;                        //Calculating the power factor.
printf("\n\t(a).The field voltage Vf is %0.2fV",Vf);
printf("\n\t    The field current If is %0.3fA",If);
printf("\n\t(b).The armature current Ia is %0.2fA",Ia);
printf("\n\t    The back emf Eg is %0.2fV",Eg);
printf("\n\t    The delay angle alpha_a is %0.1f°",alpha_a);
printf("\n\t(c).The output power Po is %0.1fW",Po);
printf("\n\t    The rms input current Isa is %0.2fA",Isa);
printf("\n\t    The input volt-ampere rating VI is %0.1fA",VI);
printf("\n\t    The power factor PF is %0.3f(lagging)",PF);
//Some answers are varied due to round-off error.
