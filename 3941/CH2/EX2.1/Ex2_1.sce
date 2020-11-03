//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 2.1
//Finding the Saturation Current

clc;
clear;
VD=1.2;                      //Forward Voltage drop of Diode in Volts.
ID=300;                      //Forward Current in Amps.
n=2;                         //Emprical Constant or Ideality factor.
VT=25.7;                     //Thermal Voltage constant in mV.
Is=ID/(exp(VD/(n*VT*10^-3))-1);//Calcualating Is.
printf("The reverse saturation Current Is is %0.5e A",Is);
