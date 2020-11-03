//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 17.3
//Finding the Values of the Snubber Circuit.

clc;
clear;
IR=20;                     //Recovery current of the diode in ampere.
L=50;                      //Inductance in micro henry.
Vs=220;                    //Input voltage in colts.
Vp=1.5*Vs;                 //Calculating peak transient voltage.
d0=0.75;                   //Optimum current factor from fig(17.9).
del_o=0.4;                    //Optimum damping factor from fig(17.9).
C=(L)*(IR/(d0*Vs))^2;      //Calculating snubber capacitance.
R=2*del_o*sqrt(L/C);          //Calculating snubber resistance.
wo=10^6/sqrt(L*C);         //Calculating resonant frequncy.
dv=0.88*Vs*wo;             //Calculating the change in voltage.
v_t0=R*IR;                 //Calculating intial reverse voltage.
printf("\n\t(a).The optimum current factor do is %0.2f",d0);
printf("\n\t(b).The optimum damping factor del_o is %0.1f",del_o);
printf("\n\t(c).The snubber capacitance C is %0.3fµF",C);
printf("\n\t(d).The snubber resistance R is %0.1fΩ",R);
printf("\n\t(e).The resonant frequency wo is %irad/s",wo);
printf("\n\t    The change in voltage dv/dt is %0.1fV/µs",dv*10^-6);
printf("\n\t(f).The intial reverse voltage v(t=0) is %0.0fV",v_t0);
