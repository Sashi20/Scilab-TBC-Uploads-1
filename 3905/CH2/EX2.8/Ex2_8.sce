//Example 2.8, Page Number 43
//Threshold Voltage of an NMOS Transistor
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vto=0.75            //Threshold voltage for zero Substrate bias voltage(V_sb=0) in volts(V)
tou=0.54                 //Body-effect coefficient(Gamma)
V_sb=5           //Substrate bias voltage in volts(V)
Vb=0.6     //Voltage drop across depletion region at inversion(Vb=-2*Φf) in volts(V)

//Outputs
Vt=Vto+(tou*(sqrt((Vb)+V_sb)-sqrt(Vb)))  //Threshold voltage at high level in volts(V)

//Results
mprintf("Threshold voltage Vt: %.12f volts",Vt)
//The obtained threshold voltage is more than twice the threshold under zero bias conditions.

//Output
// Threshold voltage Vt: 1.609591031759 volts      


