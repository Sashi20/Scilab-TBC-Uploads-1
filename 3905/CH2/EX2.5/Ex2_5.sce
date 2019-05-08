//Example 2.5, Page Number 31
//Mean Transit Times
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
//Mean transit times for the diode of problem 2.1
Wn=5*(10^-6)        //Width of N-depletion layer region in micro meters(m)
W2=0.15*(10^-6)    //Small change in width of N-depletion layer region in meters(m)
Dp1=10*(10^-4)        //Diffusion co-efficient in metres square per second(m^2/sec)
Dp2=25*(10^-4)         //Diffusion co-efficient in metres square per second(m^2/sec)
Wp=0.7*(10^-6)       //Width of P-depletion layer region in meters(m)
W1=0.03*(10^-6)       //Small change in width of P-depletion layer region in meters(m)

//Outputs
tou_tp=(((Wn-W2)^2)/(2*Dp1))     //Mean transit time of P-region in seconds(sec)
tou_tn=(((Wp-W1)^2)/(2*Dp2))     //Mean transit time of N-region in seconds(sec)

//Results
mprintf("Transit time for P-region tou_tp: %.11f secs",tou_tp)
mprintf("\nTransit time for N-region tou_tn: %.11f secs",tou_tn)

//Outputs
//Transit time for P-region tou_tp: 0.00000001176secs (or) 11.76nsec
//Transit time for N-region tou_tn: 0.00000000009secs (or) 0.09nsec

