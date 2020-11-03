//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 4.2
//Finding the Switching Loss of a Transistor.

clc;
clear;
Vcc=250;                    //Collector voltage in Volts.
Vbe_sat=3;                  //Base emitter Voltage in volts.
Ib=8;                       //Base Current in Ampheres.
Vce_sat=2;                  //Collector emitter voltage in volts.
Ics=100;                    //Collector current in volts.
td=0.5;                    //Delay time of transistor in micro seconds.
tr=1;                      //Rise time of transistor in micro seconds.
ts=5;                      //Stoping time of transistor in micro seconds.
tf=3;                     //Fall time of transistor in micro seconds.
fs=10;                    //Frequency in KHZ.
k=0.5;                     //Duty cycle.
Iceo=3;                   //Collector to emitter leakage current in mill Amps.
T=1/fs;                    //Calculating the total time.
tn=(50)-td-tr;            //Calculating the turn on time.
to=(50)-ts-tf;           //Calculating the turn off time.
Pct=Iceo*10^-3*Vcc;       //Calculating the power due to collector current during delay time.
Pd=Iceo*10^-3*Vcc*td*10^-6*fs*10^3;//Calculaing the average power loss during delay time.
tm=(tr*Vcc)/(2*(Vcc-Vce_sat));     //Calculating the maximum time.
Pp=(Vcc^2*Ics)/(4*(Vcc-Vce_sat));  //Calculating the peak power.
Pr=fs*10^3*Ics*tr*10^-6*((Vcc/2)+((Vce_sat-Vcc)/3));//Caculating power loss during rise time
Pon=Pd+Pr;                        //Calculating the total power loss during turn on time.
Pn=Vce_sat*Ics*tn*10^-6*fs*10^3;  //Calculating the power loss during the conduction time.
Ps=Vce_sat*Ics*ts*10^-6*fs*10^3;  //Calculating the power loss during the storage time.
Pm=(Vcc*Ics)/4;                   //Calculating the peak power.
Pf=(Vcc*Ics*tf*10^-6*fs*10^3)/(6);//Calculating the power loss during peak time.
Poff=Ps+Pf;                       //Calculating the power loss during turn off.
Po=Iceo*10^-3*Vcc*to*10^-6*fs*10^3;//Calculating the power loss due to collector current during turn off.
Pt=Pon+Pn+Poff+Po;                 //Calculating the total power loss due to collector current.
printf("\n(a). During delay time,:");
printf("\n\tThe instantaneous power due to the collector current Pc(t) is %0.2fW",Pct);
printf("\n\tThe average power loss during the delay time Pd is %0.2fmW",Pd*10^3);
printf("\n\tThe maximum time tm is %0.3fμs",tm);
printf("\n\tThe power during rise time Pr is %0.2fW",Pr);
printf("\n\tThe peak power loss during rise time Pp is %iW",Pp);
printf("\n\tThe total power loss during turn on Pon is %0.2fW",Pon);
printf("\n(b). During the conduction period,");
printf("\n\tThe power loss during conduction time, Pn is %iW",Pn);
printf("\n(c). During the storage period,");
printf("\n\tThe power loss during storage period Ps is %iW",Ps);
printf("\n\tThe maximum power durring fall time Pm is %iW",Pm);
printf("\n\tThe power loss during the peak time Pf is %iW",Pf);
printf("\n\tThe power loss during turn off time Poff is %iW",Poff);
printf("\n(d).During off period,");
printf("\n\tThe power loss due to  collector current during turn off Po is %0.3fW",Po);
printf("\n(e).The total power loss in the transistor due to collector current is Pt is %0.2fW",Pt);
//Ploting graph using above values.
clf;
t=[0.5 1 1.5 50 55 56.5 58 60];
p=[0.75 6300 200 200 200 6250 0.75 0.75];
plot(t,p);
xlabel("Time in Micro seconds");
ylabel("Power in Watts");
title("Instantaneous power");
printf("\n(f).The plot of the instantaneous power is shown in graph");
