//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 5.4
//Finding the Currents of a Step-up Dc Converter.

clc;
clear;
Vs=10;             //Input voltage in Volts.
f=1;               //Frequency in KHZ.
R=5;               //Resistance in Ohm.
L=6.5;             //Inductance in milli Henry.
E=0;               //Battery voltage in Volts.
k=0.5;             //Duty cycle.
T=1/(f*10^3);
z=(T*R)/(L*10^-3);
I1=(((Vs*k*z)/R)*((exp((-1+k)*z))/(1-(exp((-1+k)*z)))))+((Vs-E)/R);//Calcualting the current I1.
I2=(((Vs*k*z)/R)*((1)/(1-(exp((-1+k)*z)))))+((Vs-E)/R);            //Calculating the current I2.
del_I=I2-I1;                                                         //Calculating the change in current.
printf("\n\tThe current I1 is %0.2fA",I1);
printf("\n\tThe current I2 is %0.2fA",I2);
printf("\n\tThe change in current del_I is %0.2fA",del_I);
