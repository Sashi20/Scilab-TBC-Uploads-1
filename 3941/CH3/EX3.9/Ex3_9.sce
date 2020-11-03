//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 3.9
//Finding the Diode Ratings from the Diode Currents.

clc;
clear;
Idc=60;                      //Average load current in ampere.
V=120;                       //Supply voltage in volts.
f=60;                        //Supply frequency in Hz.
Id=Idc/3;                    //Calculating average diode current.
Ir=Idc/sqrt(3);              //Calculating rms diode current.
PIV=sqrt(3)*sqrt(2)*V;       //Calculating peak inverse voltage.
printf("\n\tThe average diode current Id is %0.0fA",Id);
printf("\n\tThe rms diodoe current Ir is %0.2fA",Ir);
printf("\n\tThe peak inverse voltage PIV is %0.0fV",PIV);
//Ploting the graph of the current through the diode
a=[0,Idc,Idc,0];
b1=[%pi/3,%pi/3,%pi,%pi];
b2=[2*%pi/3,2*%pi/3,4*%pi/3,4*%pi/3];
b3=[%pi,%pi,5*%pi/3,5*%pi/3];
b4=[4*%pi/3,4*%pi/3,2*%pi,2*%pi];
a1=[0,Idc,Idc,0,0,Idc,Idc]
b5=[0,0,%pi/3,%pi/3,5*%pi/3,5*%pi/3,2*%pi];
b6=[0,0,2*%pi/3,2*%pi/3];
subplot(511)
plot2d(b1,a,rect=[0,0,8,75]);
xlabel("wt in Radians");
title("Current through diodes");
ylabel("Id1 (A)");
subplot(612)
plot2d(b2,a,rect=[0,0,8,75]);
xlabel("wt in Radians");
ylabel("Id2 (A)");
subplot(613)
plot2d(b3,a,rect=[0,0,8,75]);
xlabel("wt in Radians)");
ylabel("Id3 (A)");
subplot(614)
plot2d(b4,a,rect=[0,0,8,75]);
xlabel("wt in Radians");
ylabel("Id4 (A)");
subplot(615)
plot2d(b5,a1,rect=[0,0,8,75]);
xlabel("wt in Radians");
ylabel("Id5 (A)");
subplot(616)
plot2d(b6,a,rect=[0,0,8,75]);
xlabel("wt in Radians");
ylabel("Id6 (A)");
