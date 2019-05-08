//Example 2.6, Page Number 32
//Diffusion Capacitance
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Is=0.5*(10^-16)     //Saturation current of diode in amperes(A)
tou_t=1*(10^-9)        //Mean time in seconds(secs)
Φt=26*(10^-3)               //Thermal voltage in volts(V)
Vd=0.75             //Forward bias diode voltage in volts(V)

//Outputs
Id=Is*(exp((Vd/Φt))-1) //Diode equation to obtain diode current(Id)in amperes(A)
Cd=(tou_t*Id)/Φt           //Diffusion capacitance in farads(f)

//Results
mprintf("Diffusion Capacitance Cd: %.13f farads",Cd)

//Output
//Diffusion Capacitance Cd: 0.0000000000065 farads (or) 6.5 picofarads

