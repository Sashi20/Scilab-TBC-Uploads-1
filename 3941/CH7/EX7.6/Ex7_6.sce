//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 7.6
//Finding the Values of L and C for a Series-Loaded Resonant Inverter to Yield Specific Output Power.

clc;
clear;
PL=1;                        //Load power in killo watts.
R=10;                        //Load resistance in Ohm.
fo=20;                       //Resonant frequency in KHz.
P1=250;                      //Power in watts.
u=0.8;
//Calculating the supply voltage.
Vp1=round(sqrt(PL*10^3*2*R));
Vs=floor((Vp1*%pi)/4);
Qs=sqrt((((PL*10^3)/P1)-1)/(((u)-(1/u))^2));//Calculating the quality factor.
L=(Qs*R)/(2*%pi*fo*10^3);               //Calculating the inductance.
C=((1/(fo*10^3*2*%pi))^2)*(1/L);       //Calculating the capacitance.
printf("\n\t(a).The input supply current Vs is %iV",Vs);
printf("\n\t(b).The Quality factor if the power is to be reduced to 250w, Qs is %0.2f",Qs);
printf("\n\t(c).The inductor L is %0.1fµH",L*10^6);
printf("\n\t(d).The capacitor C is %0.4fµF",C*10^6);

