//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 17.5
//Finding the Performance Parameters of Switching Transients.

clc;
clear;
Vs=120;                     //Secondary voltage in volts.
Lm=2;                       //Secondary magnetizing inductance in milli Henry.
f=60;                       //Frequency in Hz.
theta=180;                  //Supply Angle at which primary is disconnected in degree.
Vp=300;                     //Maximum transient voltage.
Vm=sqrt(2)*Vs;              //Calculating phase voltage.
w=2*%pi*f;                  //Calculating frequency in rad/sec.
Vc=Vm*sin(%pi);             //Calculating the capacitor voltage.
Io=(Vm/(w*Lm*10^-3))*cosd(%pi);      //Calculating the magetizing currnet.
C=Io*(Vm/(Vp^2*w));         //Calculating the required capacitance.
printf("\n\t(a).The capacitor voltage Vc is %0.1fV",Vc);
printf("\n\t(b).The magnetizing current Io is %0.0fA",Io);
printf("\n\t(c).The required capacitance C is %0.1fµF",C*10^6);
//Answeres are changed due to round off error.
