//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 16.4
//Determining the Voltage, Current, and Power at the MPPT Point.

clc;
clear;
//Ip Vs Vp characteristic of  a Pv cell can be described by below  two segments.
Vp1=poly(0,"Vp");Vp2=poly(0,"Vp");
Ip1=-0.01*Vp1+1;Ip2=-3.5*Vp2+2.8
//Constnts obtained from the given equation
C1=1;C2=2.8;
m1=-0.1;m2=-3.5;
Vp=(C2-C1)/(m1-m2);           //Calculating the voltage Vp.
Ip=(-0.1*Vp)+1;               //Calculating the current Ip.
Po=Vp*Ip;                     //Calculating output power.
printf("\n\tThe voltage Vp is %0.3fV",Vp);
printf("\n\tThe current Ip is %0.3fA",Ip);
printf("\n\tThe output power Po is %0.3fV",Po);
