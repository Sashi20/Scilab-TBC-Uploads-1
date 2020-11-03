//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 2.7
//Finding the Current in an RLC Circuit.

clc;
clear;
Vs=220;         //Source Voltage in Volts.
L=2;           //Inductance in milli Henry.
C=0.05;        //Capacitance in micro Farad.
R=160;         //Resistance in Ohm.
alp=(R*10^3)/(2*L);     //Calculation of the damping factor alp.
wo=1/(sqrt((L*10^-3)*(C*10^-6)));     //Calculation of resonant frequency.
wr=sqrt(wo^2-alp^2);   //Calculation of ringing frequncy.
t1=%pi/wr;                 //Calculating the conduction time of diode.
printf("\n\tThe damping ratio alp is %irad/s",alp);
printf("\n\tThe resonant frequency wo is %0.0frad/s",wo);
printf("\n\tThe ringing frequncy wr is %0.0frad/s",wr);
printf("\n\t(b).The Conduction time of diode when t=0, t1 is %0.2fμs",t1*10^6);
printf("\n\t(c).The current waveform is shown in figure.");
//Ploting the current waveform in the figure 2.21.
t=[0:0.00001:0.0001];
//Calculating the values in the graph with respect to time.
wrt=wr*t;
g1=1.2*exp(-alp*t);
g=-1.2*exp(-alp*t);
g2=sin(wr*t);
clf;
plot(wrt,g1);
plot(wrt,g);
xlabel("Frequency in Radians");
ylabel("Current in Ampere");
title("Current waveform");
plot(wrt,g2);
xlabel("Frequency in Radians");
ylabel("Current in Ampere");
title("Current waveform");
//The plot given in the textbook have some error.
//Some answers may vareid due to round-off error.
