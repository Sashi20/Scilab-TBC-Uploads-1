//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 4.3
//Finding the Base Drive Loss of a Transistor.

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
ton=td+tr;                //Calculating the turn on time.
toff=ts+tf;              //Calculating the turn off time.
T=1/fs;                    //Calculating the total time.
tn=(50)-td-tr;            //Calculating the turn on time.
Pbt=Vbe_sat*Ib;            //Calculating the power due to base current.
Pb=Pbt*(ton+tn+ts+tf)*10^-6*fs*10^3;//Calculating the average power loss.
printf("\n\tThe instantaneous power due to the base current Pb(t) is %iW",Pbt);
printf("\n\tThe average power loss Pb is %0.2fW",Pb);
