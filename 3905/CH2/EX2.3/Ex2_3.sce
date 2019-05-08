//Example 2.3, Page Number 29
//Junction Capacitance 
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
//Consider a silicon junction with following parameters:
Cjo=0.5*((10^-15)/(10^-12))  //Capacitance under zero-bias in farads per metre square(F/m^2)
Ad=12*(10^-6)    //Junction area in metre square(m^2)
phi_o=0.64    //Built-in potential at zero bias in volts(V)
Vd=-5      //Reverse bias voltage in volts(V)

//Outputs
Cj=Cjo/(sqrt(1-(Vd/phi_o)))      //Junction capacitance in farads per metre square(F/m^2)
//The above equation is valid under conditions that the P-N junction is a abrupt junction.

//Results
mprintf("Junction Capacitance Cj: %.6f F/m^2",Cj);

//Output
//Junction Capacitance is: 0.000168 F/m^2 (or) 0.168 fF/µm^2

