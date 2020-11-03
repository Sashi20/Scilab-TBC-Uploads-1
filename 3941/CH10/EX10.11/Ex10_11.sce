//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 10.11
//Finding the Minimum Value of Gate Pulse Width for a Single-Phase Full Converter.

clc;
clear;
IH=0.5;                       //Holding current of thyristor in ampere.
td=1.5;                      //Delay time in micro seconds.
Vs=120;                      //Supply voltage in volts.
f=60;                        //Frequency in Hz.
L=10;                        //Inductance in milli Henry.
R=10;                        //Resistance in Ohm.
alp=30;                        //Delay angle in degree.
Vm=sqrt(2)*Vs;               //Calculating the phase voltage.
V1=Vm*sin(%pi/6);            //Calculating the voltage at delay angle alp.
di=V1/(L*10^-3);             //Calculating the rate of rise of anode voltage at alp.
t1=IH/(di*10^-6);           //Calculating the time required for anode current to rise to holding curret.
tG=t1+td;                   //Calculating the minimum width of the gate pulse.
printf("\n\tThe voltage at wt=alp=30°, V1 is %0.2fV",V1);
printf("\n\tThe rate of rise of di/dt at instant of triggering is %0.0fA/s",di);
printf("\n\tThe time required for anode current to rise to holding current t1 is %0.2f micro seconds",t1);
printf("\n\tThe minimum width of the gate pulse is %0.2f micro seconds",tG);
