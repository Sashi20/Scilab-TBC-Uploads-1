//Example 2.1, Page Number 20
//Built-in Voltage of PN Junction 
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Na=10^15       //Acceptor ions doping densities in atoms per cm cube (atoms/cm^3)
Nd=10^16      //Donor ions doping densities in atoms per cm cube (atoms/cm^3)
T=300          //Temperature in Kelvin(K)
phi_t=26         //Thermal Voltage in milli Volts(mV) at 300 kelvin
ni=1.5*10^10     //Intrinsic carrier concentration of pure semiconductor in inverse cm cube (1/cm^3)

//Outputs
phi_o= phi_t*log((Na*Nd)/(ni*ni))      // Built-in Potential of P-N junction at zero bias in milli volts(mV)

//Results
mprintf("Built-in potential of P-N junction at 300k phi_o: %.2f mV",phi_o);

//Outputs
//Built-in potential of P-N junction at 300k phi_o: 637.46 mV
