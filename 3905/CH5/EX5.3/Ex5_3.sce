//Example 5.3, Page Number 277
//Differential ECL Gate
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vcc=5                     //Supply voltage in volts(V)
Iee=400*(10^-6)               //Emitter current supply in amperes(A)
Rc=625                        //Collector resistance in ohms(Ω)

//Outputs
Voltage_swing=Iee*Rc                    //Output voltage swing in volts(V)
P_consm=Iee*Vcc                         //Static power consumption in watts(W)

//Results
mprintf("\nOutput logic swing: %.2f volts",Voltage_swing);
mprintf("\nStatic power consumption: %.4f watts",P_consm);

//Outputs
//Output logic swing: 0.25 volts
//Static power consumption: 0.0020 watts (or) 2mW

