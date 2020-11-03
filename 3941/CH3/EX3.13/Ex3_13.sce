//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 3.13
//Finding the Values of an LC Output Filter to Limit the Amount of Output Ripple Voltage.

clc;
clear;
R=40;                    //Resistance in Ohm.
L=10;                    //Inductance in milli Henry.
f=60;                    //Frequency in Hz.
w=2*%pi*f;               //Frequency in rad/sec.
RF=10;                   //Ripple factor of output voltage in percentage.
Ce=RF/(2*w*sqrt(R^2+(2*w*L*10^-3)^2));//Calculating value of filter capacitance.
Le=(4.714+1)/((2*w)^2*Ce);            //Calculating value of filter inductance.
printf("\n\t(a).The value of filter capacitance Ce is %0.0fµF",Ce*10^6);
printf("\n\t    The value of filter capacitance Le is %0.2fmH",Le*10^3);
//Some answers may be changed due to roundoff-error.