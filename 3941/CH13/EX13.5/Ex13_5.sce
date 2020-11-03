//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 13.5
//Finding the Performance Parameters of an AC Power Supply with a PWM Control.

clc;
clear;
R=2.5;                       //Resistance in Ohm.
Vs=100;                      //Supply voltage in volts.
f=20;                        //Input frequency in KHz.
a=0.5;                       //Turns ratio of the transformer;
del=18;                        //Width of each pulse in degree.
p=4;                         //Number of pulses per half cycle.
V1=Vs;                       //Calculating rms primary voltage.
V2=a*V1;                     //Calculating rms secondary voltage.
Vo=V2;                       //Calculating the output power.
VL=Vo*(sqrt((p*del)/180));     //Calculating the load voltage.
IL=VL/R;                     //Calculating the load current.
printf("\n\tThe rms primary voltage V1 is %0.0fV",V1);
printf("\n\tThe rms secondary voltage V2 is %0.0fV",V2);
printf("\n\tThe output voltage Vo is %0.0fV",Vo);
printf("\n\tThe rms load voltage VL is %0.1fV",VL);
printf("\n\tThe rms load current IL is %0.2fA",IL);
