//Example 8.2, Page Number 355
//Aperture Time
clc;

//Inputs
n=10                    //No of bit resolution
BW=10*(10^3)                //Bandwidth of signal in hertz
 
//Outputs
N=(2^n)               //Number of output states
delta_Ta=(2/(N*2*3.14*BW))            //Aperture time in seconds
Ts=((1/(2*BW)))                    //Minimum sampling rate in seconds
 
//Results
mprintf("Number of output states: %.5f\n",N);
mprintf("Aperture time: %.13f seconds\n",delta_Ta);
mprintf("Minimum sampling rate: %.6f seconds\n",Ts);

//Outputs
//Number of output states: 1024.00000
//Aperture time: 0.0000000311007 seconds (or) 31.100nanoseconds
//Minimum sampling rate: 0.000050 seconds (or) 50 microseconds


//Even for this low-resolution converter,the required aperture time (32 nsec) is much smaller than the required sample period (50,000 nsec). 
 
