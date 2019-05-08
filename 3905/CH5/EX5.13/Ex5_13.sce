//Example 5.13, Page Number 310
//MESFET Source-Follower
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vd_on=0.7                    //Forward bias diode voltage in volts(V)
V_oh=-1.3                   //Output high level transition voltage in volts(V)
V_ol=-1.7                   //Output low level transition voltage in volts(V)
Vgs=0.5                     //Gate-Source voltage in volts(V)
Vds=0.8                     //Drain-Source voltage in volts(V)
beta_enhancement=250*(10^-6)               //ß=250*(10^-6) for Enhancement MESFET in Area per Voltage aquare(A/V**2)
lamda=0.2                         //Channel modulation constant in volt inverse(1/V)
alpha=6.5                          //
Vout=-1.5                       //Output voltage at midpoint of voltage swing in volts(V)
Vp=0.23                        //Pinch-Off voltage in volts(V)
Weff_to_Leff=10                     //Width to length ratio of depletion region

//Outputs
Isf=(Weff_to_Leff)*beta_enhancement*((Vgs-Vp)^2)*(1+(lamda*Vds))*tanh(alpha*Vds)   //Drain Source current in amperes(A)

//Results
mprintf("\nDrain current Isf: %.5f amperes",Isf);
//For this value of current,the voltage drop over the source follower is virtually constant over complete range of voltage interest.

//Output
//Drain current Isf: 0.00021 amperes (or) 0.21 mA


