//Example 9.5, Page Number 537
//Synchronizers and Mean Time-to-Failure
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
T_phi=10*(10^-9)                               //Sampling period in seconds(secs)
T1=10*(10^-9)                                 //Waiting time in seconds(secs)
T2=20*(10^-9)                                 //Waiting time in seconds(secs)
Tsignal=50*(10^-9)                             //Time period of the signal in seconds(secs)
tr=1*(10^-9)                                 //Rise time in seconds(secs)
tou=310*(10^-12)                                 //Time constant in seconds(secs)
Vswing=5                                    //Voltage swing of signal in volts(V)
V_transition=1                      //Transition difference in volts(V){Vtransition=V_ih-V_il}

//Outputs
P_init=((V_transition/Vswing)/Tsignal)*tr  //Error probability in errors per second(Error/Sec)
N_sync1=(P_init*(exp(-T1/tou)))/T_phi             //Averege number of synchronization errors per second for T1 in inverse seconds(errors/secs)
Mean_time_failure1=1/N_sync1          //Mean time to failure in seconds(secs)
//If wating period(T) is doubled:
N_sync2=(P_init*(exp(-T2/tou)))/T_phi             //Averege number of synchronization errors per second for T2 in inverse seconds(errors/secs)
Mean_time_failure2=1/N_sync2          //Mean time to failure in seconds(secs)

//For a typical CMOS inverter with voltage swing of 5V, the V_IH-V_IL computed is 1V
//Results
//in seconds
mprintf("\nAverege number of synchronization errors per second N_sync1: %.9f errors/sec",N_sync1);
mprintf("\nMean time to failure for waiting time T1 Mean_time_failure1: %.1f seconds",Mean_time_failure1);
//If no synchronizer was used, the MTF would only have been 2.5 µsecs!

//in years
mprintf("\nMean time to failure for waiting time T1 Mean_time_failure1(in years): %.2f years",Mean_time_failure1/(365*24*60*60));
mprintf("\nMean time to failure for waiting time T2 Mean_time_failure2(in years): %.2f years",Mean_time_failure2/(365*24*60*60));

//Outputs
//Averege number of synchronization errors per second N_sync1: 0.000000004 errors/sec
//Mean time to failure for waiting time T1 Mean_time_failure1: 255528546.7 seconds (or) 2.55 X 10^8 secs
//Mean time to failure for waiting time T1 Mean_time_failure1(in years): 8.10 years
//Mean time to failure for waiting time T2 Mean_time_failure2(in years): 828194294345529.87 years (or) 8.2 X 10^14 years
