//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 3.10
//Finding the Diode Average and rms Currents from the Waveforms.

clc;
clear;
t1=100;                     //Time in micro seconds.
t2=350;                     //Time in micro seconds.
t3=500;                     //Time in micro seconds.
f=250;                      //Resonant frequency in Hz.
fs=5;                       //Resonant frequency in KHz.
Im=450;                     //Magnetizing current in ampere.
Ia=150;                    //Average current in ampere.
ID_rms=sqrt(((Im^2*f*t1*10^-6)/2)+(Ia^2*f*(t3-t2)*10^-6));//Calculating rms diode current.
ID_av=((Im*f)/(%pi*fs*10^3))+(Ia*f*(t3-t2)*10^-6);    //Calculating average diode current.
printf("\n\t(a).The rms value of diode current ID(rms) is %0.2fA",ID_rms);
printf("\n\t(b).The average diode current ID(av) is %0.2fA",ID_av);
//Ploting the Current waveform in Fig 3.19.
ws=2*%pi*fs*10^3;
t11=[0:((t1*10^-6)/2):(t1*10^-6)];
I11=Im*sin(ws*t11);
t22=[0 (t2*10^-6) (t2*10^-6) (t3*10^-6) (t3*10^-6)]
I22=[0 0 Ia Ia 0]
plot(t11,I11);
plot(t22,I22);
title("Current waveform(Fig 3.19)");
xlabel("Time in Micro seconds");
ylabel("Current in Ampere");
