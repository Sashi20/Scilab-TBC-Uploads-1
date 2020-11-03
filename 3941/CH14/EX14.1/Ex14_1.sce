//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 14.1
//Finding the Voltage and Current of a Seperately Excited Motor.

clc;
clear;
P=15;                    //Rated Capacity of the motor in hp.
N=2000;                  //Rated Speed of motor in rpm.
TL=45;                   //Load torgue in Nm.
N1=1200;                 //Running speed of motor.
Rf=147;                  //Field resistance in Ohm.
Ra=0.25;                 //Armature Resistance in Ohm.
Kv=0.7032;               //Voltage constant of the motor in V/Arad/sec.
Vf=220;                  //Field voltage in volts.
w=(N1*%pi)/(30);         //Calculating the resonant frequency.
If=Vf/Rf;                //Calculating field current.
Ia=TL/(Kv*If);           //Calculating armature current.
Eg=Kv*w*If;              //Calculating the back emf.
Va=(Ra*Ia)+Eg;           //Calculating the armature voltage.
Irated=(P*746)/Vf;       //Calculating the rated armature current of motor.
printf("\n\tThe resonant frequency w is %0.2frad/sec",w);
printf("\n\tThe field current If is %0.3fA",If);
printf("\n\t(a).The armature current Ia is %0.2fA",Ia);
printf("\n\tThe back emf Eg is %0.2fV",Eg);
printf("\n\t(b).The armature voltage Va is %0.2fV",Va);
printf("\n\t(c).The rated armature current of  motor Irated is %0.2fA",Irated);
//Answers are changed due to round off error.
