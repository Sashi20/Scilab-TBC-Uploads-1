//Example 5.10, Page Number 305
//GaAs MESFET Current-Voltage Characteristics
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vgs=0.5                     //Gate-Source voltage in volts(V)
Vds=2                     //Drain-Source voltage in volts(V)
beta_enhancement=250*(10^-6)               //ß=250*(10^-6) for Enhancement MESFET in Area per Voltage aquare(A/V**2)
lamda=0.2                         //Channel modulation constant in volt inverse(1/V)
alpha=6.5                          //Transistor parameter in inverese volt(V) and alpha=6.5 for enhancement MOSFET.
Vp=0.23                        //Pinch-Off voltage in volts(V)
W=4*(10^-6)                            //Depletion region width
L=1*(10^-6)                            //Depletion region length
delta_W=0.15*(10^-6)                         //Change in Depletion region width
delta_L=0.4*(10^-6)                         //Change in Depletion region length
Weff=W-delta_W                                //Effective depletion region width
Leff=L-delta_L                                //Effective depletion region length

//Outputs
Id=(Weff/Leff)*beta_enhancement*((Vgs-Vp)^2)*(1+(lamda*Vds))*tanh(alpha*Vds)   //Drain current in amperes(A)

//Results
mprintf("\nDrain current Id: %.7f amperes",Id);

//Output
//Drain current Id: 0.0001637 amperes (or) 163.7 µA


