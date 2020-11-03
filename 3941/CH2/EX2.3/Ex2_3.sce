//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example 2.3
//Finding the voltage-Sharing resistors

clc;
clear;
Is1=30;Is2=35;           //Reverse leakage Current of two diodes in milli ampere.
R=100;R1=100;            //Resistance of two diodes in Ohm.
VD=5;                    //Dc Reverse Voltage in KV.
VD1=VD/2;VD2=VD/2;       //Volage acrssos the diode in volts.
Vd1=((VD*10^3)/2)+(((R*10^3)/2)*((Is2*10^-3)-(Is1*10^-3)));    //Calculating the voltage across the doiode.
Vd2=(VD*10^3)-Vd1;
r2=(VD2*R1)/(VD1-(R1*((Is2-Is1)*10^-3)));
printf("\n\t(a) The Voltage across diode D1, VD1 is %iV",Vd1);
printf("\n\t    The Voltage across diode D2, VD2 is %iV",Vd2);
printf("\n\t(b) The Voltage Sharing Resistance R2 is %iKilo Ohm",r2);
