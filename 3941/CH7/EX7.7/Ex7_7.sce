//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 7.7
//Finding the Values of L and C for a Parallel-Loaded Resonant Inverter to Yield Specific Output Power

clc;
clear;
PL=1;                        //Load power in killo watts.
R=10;                        //Load resistance in Ohm.
fo=20;                       //Resonant frequency in KHz.
Vp=330;                      //Peak load voltage in volts.
//Calculating the supply voltage.
Vp1=round(sqrt(PL*10^3*2*R));
Vs=floor((Vp1*%pi)/4);
Vi_pk=(4*Vs)/%pi;            //Calculating the peak input voltage.
Q=Vp/Vi_pk;                  //Calculating the quality factor.
//Calculating the value of frequency ratio from Eq 7.36.
x=poly(0,"u");
u1=((1-x^2)^2)+(x/Q)^2-4;
u2=roots(u1);                
u=u2(2,1);
L=R/(2*%pi*20*10^3*Q);                 //Calculating the Inductance.
C=((1/(fo*10^3*2*%pi))^2)*(1/L);       //Calculating the capacitance.
printf("\n\t(a).The dc supply voltage Vs is %iV",Vs);
printf("\n\t   .The peak input voltage Vi(pk) is %0.2fV",Vi_pk);
printf("\n\t(b).The quality factor Q is %0.3f",Q);
printf("\n\t    The frequency ratio u is %0.3f",u);
printf("\n\t(c).The inductance L is %0.2fµH",L*10^6);
printf("\n\t(d).The capacitance C is %0.3fµF",C*10^6);
