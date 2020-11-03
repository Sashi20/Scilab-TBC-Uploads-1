//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 3.14
//Finding the Values of an LC Input Filter to Limit the Amount of Input Ripple Current.

clc;
clear;
f=60;                      //Supply frequency in Hz.
w=2*%pi*f;                 //Calculating frequency in rad/sec.
Ci=1000;                   //Asummed value of capacitance in micro farad.
Li=(99/((100*w^2)-(3*(3*w)^2)))/(Ci*10^-6);//Calculating the value of capacitance by asumming the value of capacitance.
printf("\n\tThe value of Inductance at capacitance (Ci=1000µF), Li is %0.3fmH",Li*10^3);
//Answer is change due to round off error.
