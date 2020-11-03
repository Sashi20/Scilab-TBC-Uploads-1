//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 14.6
//Finding the Performance Parameters of a Three-Phase Full-Converter Drive.

clc;
clear;
P=20;                        //Rated Capacity of the motor in hp.
V=300;                       //Rated voltage in volts.
N=1800;                      //Rated speed of the motor.
VL=208;                      //Load voltage in volts.
f=60;                        //Frequency in Hz.
Ra=0.25;                     //Armature resistance in Ohm.
Rf=245;                      //Field resistance in Ohm.
Kv=1.2;                      //Motor voltage constant V/Arad/sec.
w=(N*%pi)/30;                //Calculating the spped in rad/sec.
Vp=VL/sqrt(3);               //Calculating the phase voltage.
Vm=sqrt(2)*Vp;               //Calculating converter voltage.
Irated=(P*746)/V;            //Calculating rated armature current.
Vf=(3*sqrt(3)*Vm)/%pi;       //Calculating field voltage.
If=Vf/Rf;                    //Calculating field current.
Ia=Irated;                   //Calculating armature current.
Eg=Kv*If*w;                  //Calculating back emf.
Va=Eg+(Ia*Ra);               //Calculating armature voltage.
alpa=acosd((Va*%pi)/(3*sqrt(3)*Vm));//Calculating delay angle.
Ia1=0.1*Ia;                       //Calculating 10% of aramature current.
Ego=Va-(Ra*Ia1);                  //Calculating the back emf at no load.
wo=Ego/(Kv*If);                   //Calculating the no load speed.
N1=wo*(30/%pi);                   //Calculating no load speed in rpm.
reg=(N1-N)/N;                     //Calculating the speed regulation.
printf("\n\tThe phase voltage Vp is %0.0fV",Vp);
printf("\n\tThe rated current Irated is %0.2fA",Irated);
printf("\n\tThe field voltage Vf is %0.1fV",Vf);
printf("\n\tThe field current If is %0.3fA",If);
printf("\n\t(a).The armature current Ia is %0.2fA",Ia);
printf("\n\t    The back emf Eg is %0.1fV",Eg);
printf("\n\t    The armatue voltage Va is %0.2fV",Va);
printf("\n\t    The delay angle alpa is %0.2f°",alpa);
printf("\n\t(b).When Ia=10percent of 49.73 Ia is %0.3fA",Ia1);
printf("\n\t    The back emf at no load Ego is %0.2fV",Ego);
printf("\n\t    The no load speed wo is %0.2frad/sec",wo);
printf("\n\t(c).The speed regulation is %0.1fpercent",reg*100);
//Some answers are changed due to round off error.
