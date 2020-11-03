//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 9.5
//Finding the Circuit Values of a UJT Triggering Circuit.

clc;
clear;
Vs=30;                            //Suply voltage in volts.
eff=0.51;                         //Efficiency of the circuit.
Vv=3.5;                           //Volatage in volts.
Iv=10;                            //Current in milli Ampere.
Ip=10;                            //Peak inpiut current Ip in Ampere.
Io=10;                            //Output current in Ampere.
f=60;                             //Oscillation frequency in Hz.
tg=50;                            //Width of the triggering pulse in micro seconds.
Vd=0.5;
C=0.5;                            //Asumed value of capacitance in micro farad.
T=1/f;                            //Calculating the time per cycle.
Vp=eff*Vs+Vd;                     //Calculating the peak voltage.
R1=(Vs-Vp)/(Ip*10^-6);R2=(Vs-Vv)/(Iv*10^-3);//Calculating the limiting value of resistance.
R=T/((C*10^-6)*log(1/(1-eff)));            //Calculating the value of resistance.
Vb1=Vp;                                    //Calculating the peak gate voltage.
RB1=tg/C;                               //Calculating the Resistance of gate 1.
RB2=10^4/(eff*Vs);                      //Calculating the resistance of gate 2.
printf("\n\tThe value of peak resistance vp is %0.1fV",Vp);
printf("\n\tThe limiting vlaue of R are %0.2fMega Ohm > R > %0.2fKilo Ohm",R1*10^-6,R2*10^-3);
printf("\n\tThe value of Resistance R is %0.1fKilo Ohm",R*10^-3);
printf("\n\tThe peak gate voltage VB1 is %0.1fV",Vb1);
printf("\n\tThe resistance of gate1 RB1 is %0.0f Ohm",RB1);
printf("\n\tThe resistance of gate2 RB2 is %0.0f Ohm",RB2);
