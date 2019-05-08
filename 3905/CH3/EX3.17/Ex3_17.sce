//Example 3.17, Page Number 173
//ECL Transient Response
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vcc=0      //Supply voltage in volts(V)
Vee=-5     //Supply voltage in volts(V)
Rc=1*(10^3)       //Collector resistance in ohms(Ω)
Rb=50*(10^3)       //Base resistance in ohms(Ω)
tdp=20*(10^-12)        //Propogation delay in seconds(secs)
Iee=0.5*(10^-3)     //Coupled emmiter current in amperes(A)
Vswing=Iee*Rc        //Transition voltage swing in volts(V)
Cl=60*(10^-15)         //Load capacitance farads(F)
Cc=62.7*(10^-15)    //Collector capacitance in farads(F)
V_oh=-0.7          //Output high level transition voltage in volts(V)

//Outputs
t_discharge=(0.5*Cl*Rb*Vswing)/(V_oh-Vee-(Vswing/4))        //Discharge time
tp_hl=tdp+t_discharge                 //Delay for high to low transition in seconds(secs)
t_charge=0.69*Rc*Cc              //Charge time in seconds(secs)
tp_lh=tdp+t_charge                    //Delay for low to high transition in seconds(secs)
tp=(tp_hl+tp_lh)/2                    // Propogation delay in seconds(secs)
//Results
mprintf("\nDischarge time t_discharge : %.13f seconds",t_discharge);
mprintf("\nDelay for high to low transition tp_hl: %.13f seconds",tp_hl);
mprintf("\nCharge time t_charge: %.13f seconds",t_charge);
mprintf("\nDelay for low to high transition tp_lh: %.13f seconds",tp_lh);
mprintf("\nPropogation delay tp: %.13f seconds",tp);

//Outputs
//Discharge time t_discharge : 0.0000000001796 seconds (or) 179.6 picosecs
//Delay for high to low transition tp_hl: 0.0000000001996 seconds (or) 199.6 picosecs
//Charge time t_charge: 0.0000000000433 seconds (or) 43.3 picosecs
//Delay for low to high transition tp_lh: 0.0000000000633 seconds (or) 63.3 picosecs
//Propogation delay tp: 0.0000000001315 seconds (or) 131.5 picosecs 
