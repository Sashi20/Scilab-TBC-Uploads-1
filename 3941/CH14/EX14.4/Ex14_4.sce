//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 14.4
//Finding the Performance Parameters of a Single-Phase Full-Converter Drive.

clc;
clear;
Vs=440;                     //Supply voltage in volts.
f=60;                       //Frequency in Hz.
Ra=0.25;                    //Armature Resistance in Ohnm.
Rf=175;                     //Field resistance in Ohm.
Kv=1.4;                     //Motor voltage constant in V/Arad/s.
Ia=45;                      //Armature current in ampere.
alpha_a=60;                      //Delay angle in degree.
Vm=sqrt(2)*Vs;              //Calculating phase voltage.
Vf=(2*Vm)/%pi;              //Calculating feild voltage.
If=Vf/Rf;                   //Calculating field current.
Td=Kv*If*Ia;                //Calculating the developed torque.
Va=((2*Vm)/%pi)*cosd(alpha_a);    //Calculating armature voltage.
Eg=Va-(Ia*Ra);              //Calculating back emf.
w=Eg/(Kv*If);               //Calculating the speed.
Pt=(Va*Ia)+(Vf*If);         //Calculating the input power.
Isa=Ia;                     //Calculating rms value of armature current.
Isf=If;                     //Calculating rms value of field current.
Is=sqrt(Isa^2+Isf^2);       //Calculating the supply current.
VI=Vs*Is;                   //Calculating VI rating.
PF=Pt/VI;                   //Calculating power factor.
printf("\n\t(a).The field voltage Vf is %0.2fV",Vf);
printf("\n\t    The field current If is %0.2fA",If);
printf("\n\t    The developed torque Td is %0.1fNm",Td);
printf("\n\t    The armature voltage Va is %0.2fV",Va);
printf("\n\t    The back emf Eg is %0.2fV",Eg);
printf("\n\t(b).The speed w is %0.2frad/sec",w);
printf("\n\t(c).The total input power Pt is %0.1fW",Pt);
printf("\n\t    The rms value of armature current Isa is %0.2fA",Isa);
printf("\n\t    The rms value of field current Isf is %0.2fA",Isf);
printf("\n\t    The effective rms supply current Is is %0.2fA",Is);
printf("\n\t    The Volt ampere rating VI is %0.1fVA",VI);
printf("\n\t    The power factor PF is %0.3f(lagging)",PF);
//Some answers are changed due to round off error.
