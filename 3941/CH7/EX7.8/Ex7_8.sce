//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 7.8
//Finding the Values of L and C for a Parallel Resonant Inverter to Yield Specific Output Power.

clc;
clear;
PL=1;                         //Load power in Killo watt.
Vp=170;                       //Peak load voltage in volts
R=10;                         //Resistance in Ohm.
fo=20;                        //Resonant frequency in KHz.
u=1.25;                       //Frequency ratio 
Is=sqrt((PL*10^3*2*%pi^2)/(4^2*R)); //Calculating the supply current.
Qp=sqrt((4-1)/(u-(1/u))^2);         //Calculating the quality factor.
C=Qp/(2*%pi*fo*10^3*R);             //Calculating the value of capacitance.
L=((1/(fo*10^3*2*%pi))^2)*(1/C);    //Calculating the inductance.
printf("\n\t(a).The dc supply current Is is %0.1fA",Is);
printf("\n\t(b).The Quality factor if the power is to be reduced to 250w, Qp is %0.2f",Qp);
printf("\n\t(c).The capacitance C is %0.2fµF",C*10^6);
printf("\n\t(d).The Inductance L is %0.2fµH",L*10^6);
