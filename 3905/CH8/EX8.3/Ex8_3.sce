//Example 8.3, Page Number 446
//Interwire Capacitance and Cross Talk
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
V=5                      //Voltage transition on Y in volts(V)
//As computation of fringing effect in this case of overlapping wires is complex, we assume two sides of wire contribute and a voltage disturbance is combined with parasitic effects 
Cx=25*(10^-15)                       //Capacitance at node 'x' in farads(F)
//Parasitic capacitance is given as (5*5*0.055fF+2*5*0.049fF)
Cxy=1.9*(10^-15)                       //Parasitic capacitance in farads(F)

//Outputs
delta_Vx=(Cx/(Cx+Cxy))*V             //Voltage drop on dynamic node in volts(V)
V_disturbance=V-delta_Vx              //Voltage disturbance at dynamic node in volts(V)

//Results
mprintf("\nVoltage drop at dynamic node delta_Vx: %.1f volts",delta_Vx);
mprintf("\nVoltage disturbance at dynamic node V_disturbance: %.1f volts",V_disturbance);

//Output
//Voltage drop at dynamic node delta_Vx: 4.6 volts
//Voltage disturbance at dynamic node V_disturbance: 0.4 volts
