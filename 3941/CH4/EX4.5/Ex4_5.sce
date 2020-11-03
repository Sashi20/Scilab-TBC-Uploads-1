//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 4.5
//Finding the Snubber Values for Limiting dv/dt and di/dt Values of a BJT Switch.

clc;
clear;
fs=10;                             //Frequency in KHZ.
Vs=220;                            //Dc voltage of the chopper in volts.
I_L=100;                            //Load current in Amps.
Vce_sat=0;                         //Collector to emitter voltage in volts.
td=0;                              //Turn on delay time in micro seconds.
tr=3;                              //Turn on rise time in micro seconds.
tf=1.2;                            //Fall time in micro seconds.
Ls=(Vs*tr)/(I_L);                   //Calculating the inductance.
Cs=(I_L*tf)/(Vs);                   //Calculating the capacitance.
Rs=2*sqrt(Ls/Cs);                  //Calculating the resistance.
Rs1=1/(3*fs*10^3*Cs*10^-6);        //Calculating the resistance.
Rs2=Vs/(0.1*I_L);                   //Calculating the resistance.
Ps=0.5*Cs*10^-6*Vs^2*fs*10^3;//Calculating the power loss in diode.
printf("\n\t(a).Inductance of the switch Ls is %0.1fμH",Ls);
printf("\n\t(b).Capacitance of the switch Cs is %0.2fμF",Cs);
printf("\n\t(c).Resistance at critically damped conditions Rs is %0.2fΩ",Rs);
printf("\n\t(d).Resistance if the discharge time is limited to one third of switching period Rs is %0.1fΩ",Rs1);
printf("\n\t(e).Resistance if the peak current is limited to 10 percent of load current Rs is %iΩ",Rs2);
printf("\n\tThe power loss Ps is %0.1fW",Ps);
//Answer is changed due to round of error.
