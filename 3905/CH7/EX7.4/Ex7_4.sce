//Example 7.4, Page Number 394
//Transistor Sizing in the Manchester Carry Chain
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
//The worst case delay of the carry chain adder can be modelled by linear RC network.
R=20*(10^3)                    //Linearized on-resistance of RC network in ohms(Ω)
C=20*(10^-15)                    //Linearized diffusion capacitance of RC network in ohms(Ω)

//Outputs
//Propogation delay of RC network:tp=(0.69*(ΣCi)*(Σ*Rj))
//Analysing equivalent network to determine propogation delay of carry chain
tp=0.69*C*(6*R+5*R+4*R+3*R+2*R+1*R)        //Worst case propogation delay of adder circuit in seconds(secs) 

//Results
mprintf("\nWorst case propogation delay of adder circuit tp: %.10f seconds",tp);

//Output 
//Worst case propogation delay of adder circuit tp: 0.0000000058 seconds (or) 5.8 nsecs

