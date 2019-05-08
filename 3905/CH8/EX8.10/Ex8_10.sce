//Example 8.10, Page Number 474
//Optimized Delay of RC Chain
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
L=5*(10^-3)                    //Length of wire in metres(m)
tp_buf=0.5*(10^-9)                  //Propogation delay of buffer in seconds(secs)
//Resistance is obtained from sheet resistance of polysilicon with tolerance.
R=95*((10000)^2)                    //Resistance of RC network in ohms(Ω)
//Capacitance ontained from summing fringing and interconnect capacitances for polysilicon wire:
C=0.15*(10^-12)                  //Capacitance of network in farads(F)

//Outputs
M=L*sqrt((0.38*R*C)/tp_buf)     //Number of buffer sections
tp=0.38*R*C*(((L/M)^2)*M)+(M-1)*tp_buf         //Propogation delay of distributed RC network in seconds(secs)

//Results
mprintf("\nNumber of buffer sections M: %.4f",M);
mprintf("\nPropogation delay of distributed RC network tp: %.12f seconds",tp);

//Output
//Number of buffer sections M: 5.2034
//Propogation delay of distributed RC network tp: 0.000000004703 seconds (or) 4.703 nsecs

