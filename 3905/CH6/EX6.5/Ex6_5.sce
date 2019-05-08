//Example 6.5, Page Number 366
//Emitter-Coupled Schmitt Trigger
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vbe_on=0.7                  //Forward Base-Emitter voltage on volts(V)
Vbe_sat=0.8                  //Saturated Base-Emitter voltage on volts(V)
Vce_sat=0.1                  //Saturated Collector-Emitter voltage on volts(V)
beta_f=100                       //Forward current gain
Vcc=5             //Supply voltage in volts(V)
R1=4*(10^3)           //Collecor resitance of transistor Q1 in ohms(Ω)
R2=2.5*(10^3)           //Collecor resitance of transistor Q2 in ohms(Ω)
Re=1*(10^3)           //Emitter resitance in ohms(Ω)


//Outputs
V_oh=Vcc                      //Output high level transition voltage in volts(V)
R1_parallel_R2= (R1*R2)/(R1+R2)
Ve_M_plus=Vcc*Re/(Re+(R1_parallel_R2))       //Emitter voltage during low to high transition in volts(V)
V_ol=Ve_M_plus+Vce_sat                      //Output low level transition voltage in volts(V)
V_M_plus=Ve_M_plus+Vbe_on                //Switching threshold during low to high transition in volts(V)
Ve_M_minus=((Vcc*Re)/(R1+Re))      //Emitter voltage during high to low transition in volts(V)
V_M_minus=Ve_M_minus+Vbe_on                //Switching threshold during high to low transition in volts(V)


//Results
mprintf("\nOutput high level transition voltage V_oh: %.4f volts",V_oh);
mprintf("\nOutput low level transition voltage V_ol: %.4f volts",V_ol);
mprintf("\nSwitching threshold during low to high transition V_M_plus: %.4f volts",V_M_plus);
mprintf("\nSwitching threshold during high to low transition V_M_minus: %.2f volts",V_M_minus);

//Outputs 
//Output high level transition voltage V_oh: 5.0000 volts
//Output low level transition voltage V_ol: 2.0697 volts
//Switching threshold during low to high transition V_M_plus: 2.6697 volts
//Switching threshold during high to low transition V_M_minus: 1.70 volts
