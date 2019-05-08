//Example 2.11, Page Number 56
//Subthreshold Slope 
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
slope=121         //Inverse Slope obtained from plot between Id vs Vgs(▲ln(Id)/▲Vgs) in milli volts per decade (mV/decade)
q=1.6*(10^-19)      //Charge in coulombs(C)
K=1.38064852*(10^23)      //Boltzman constant in (m2*kg*s^-2*K^-1)
T=300                    //Temperature in kelvin(K)

//Outputs
//Expression (▲ln(Id)/▲Vgs)^-1=(K*T/q)*log(10)*(1+α),where (K*T/q)*log(10) evaluates to 60mv/decade
alpha=(slope/60)-1    //Sloving for alpha-factor using above expression

//Results
mprintf("alpha-factor is: %.2f",alpha);

//Output
//alpha-factor is: 1.02
