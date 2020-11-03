//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 2.8
//Finding the Stored energy in an Inductor with a Freewheeling Diode.

clc;
clear;
Vs=220;             //Source Voltage in Volts.
L=220;              //Load inductance in micro Henry.
t1=100              //Time in micro seconds.
Io=(Vs/L)*t1;       //Calculating the output current.
//Plotting the Current waveform in fingure 2.25(b)
t=[0 100 150];
I=[0 Io Io]
subplot(311);
plot2d(t,I,rect=[0,0,170,110]);
xlabel("Time in micro seconds (Fig 2.25)");
ylabel("Output current (Io) in ampere");
title("Waveforms for load current");
subplot(312)
t0=[0,100,100]'
I1=[0,Io,0];
plot2d(t0,I1,rect=[0,0,170,110]);
xlabel("Time in micro seconds (Fig 2.25)");
ylabel("Output current (Io) in ampere");
subplot(313);
t2=[0 100 100 150];
I2=[0 0 Io Io]
plot2d(t2,I2,rect=[0,0,170,110]);
xlabel("Time in micro seconds (Fig 2.25)");
ylabel("Output current (Io) in ampere");
E=0.5*L*10^-6*Io^2;   //Calculating energy stored in inductor.
printf("\n\t(a).The output current Io is %0.0fA",Io);
printf("\n\t    The graph is shown in the figure");
printf("\n\t(b).The energy stored in the inducutor Lo is %0.1fJ",E);
