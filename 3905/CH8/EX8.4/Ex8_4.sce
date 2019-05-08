//Example 8.4, Page Number 453
//Output Buffer Design
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Cl=20*(10^-12)              //Off-chip capacitance in farads(F)
Ci=10*(10^-15)              //Input capacitance in farads(F)
tpo=0.2*(10^-9)            //Propogation delay of minimum size gate with single fanout in seconds(secs)
mu=2.96              //Scaling factor

//Outputs
tp=mu*log(Cl/Ci)*tpo               //Total propogation delay in seconds(secs)

//Results
mprintf("\nTotal propogation delay tp: %.10f seconds",tp);

//Output
//Total propogation delay tp: 0.0000000045 seconds (or) 4.5 nsecs


