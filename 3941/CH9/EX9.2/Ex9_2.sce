//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 9.2
//Finding the Average On-State Current of a Thyristor.

clc;
clear;
fs=50;                         //Supply frequency in Hz.
Itm=1000;                      //Thyristor current in Ampere.
t1=5;                          //Ontime of thyristor in micro seconds.
T=1/fs;                        //Calculating the time per cycle.
//Calculating the average on state current from figure 9.28
It=((0.5*(t1*10^-6)*(Itm*10^-3))+((T-(2*(t1*10^-6)))*Itm)+(Itm*(t1*10^-6)*0.5))/T;
printf("The average on state current It is %0.1fA",It);
//Answer is Changed due to round-off error.
