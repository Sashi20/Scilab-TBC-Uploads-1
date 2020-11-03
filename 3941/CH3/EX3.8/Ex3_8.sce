//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 3.8
//Finding the Performance Parameters of a Three-Phase Bridge Rectifier with an RL Load.

clc;
clear;
L=1.5;                     //Inductance in milli Henry.
R=2.5;                     //Resistance in Ohm.
E=10;                      //Voltage of the battery in volts.
Vab=208;                   //Input voltage in volts.
f=60;                      //Supply frequency in Hz.
Vs=120;                    //Supply voltage in volts.
w=2*%pi*f;                 //Calculating frequency in rad/sec.
Z=sqrt(R^2+(w*L*10^-3)^2); //Calculating input impedence.
theta=atan((w*L*10^-3)/R);     //Calculating the suply thetale.
//Calculating the steady state current.
a1=(sqrt(2)*Vab)/Z;a2=sin(((2*%pi)/3)-theta);a3=(R/(L*10^-3))*(%pi/(3*w));
a4=exp(-a3);a5=sin((%pi/3)-theta)*a4;a7=exp(-a3);a6=1-a7;
Io=(a1*((a2-a5)/a6))-(E/R);
//Calculating the average diode current.
funcprot(0)
function a=f(wt)
    a=(a1*((sin(wt-theta))+(((a2-sin((%pi/3)-theta))/a6)*exp((R/(L*10^-3))*((%pi/(3*w))-(wt/w))))))-(E/R)
endfunction
a=%pi/3;b=(2*%pi)/3;
b1=intg(a,b,f);
ID_av=(2/(2*%pi))*b1;
//Calculating rms diode current.
funcprot(0)
function b=f(wt)
    b=((a1*((sin(wt-theta))+(((a2-sin((%pi/3)-theta))/a6)*exp((R/(L*10^-3))*((%pi/(3*w))-(wt/w))))))-(E/R))^2
endfunction
c1=intg(a,b,f);
ID_rms=sqrt((2/(2*%pi))*c1);
Io_rms=sqrt(3)*ID_rms;                     //Calculating output rms current.
Pac=Io_rms^2*R;                            //Calculating ac load power.
PF=Pac/(3*sqrt(2)*Vs*ID_rms);              //Calculating the power factor.
printf("\n\tThe steady state load current Io is %0.2fA",Io);
printf("\n\tThe average diode current ID(av) is %0.1fA",ID_av);
printf("\n\tThe rms diode current ID(rms) is %0.2fA",ID_rms);
printf("\n\tThe output rms current Io(rms) is %0.1fA",Io_rms);
printf("\n\tThe ac load power Pac is %0.1fKW",Pac*10^-3);
printf("\n\tThe power factor PF is %0.2f(lagging)",PF);
//Some answers are varied due to round-off error.
