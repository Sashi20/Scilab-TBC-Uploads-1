//Example 5.5, Page Number 285
//VTC of an NTL Gate
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vcc=1.9        //Supply voltage in volts(V)
Rc=2       //Collector resistance in ohms(Ω)
Re=0.5*(10^3)       //Emitter resistance in ohms(Ω)
Vbe_on=0.75          //Base-Emitter forward bias voltage in volts(V)

//Outputs
//A large value of ratio (-Rc/Re) enchances the voltage gain and noise margin,but increases gate delay.So,(Rc=2*Re) is a good compromise.Under these conditions V_ol evaluates as
V_ol=3*Vbe_on-Vcc          //Output low level transition voltage in volts(V)
V_oh=Vcc-Vbe_on            ////Output high level transition voltage in volts(V)
Signal_swing=2*Vcc-4*Vbe_on                //Signal swing in volts(V)

//Results
mprintf("\nVbe_oh: %.2f volts",V_oh);
mprintf("\nVbe_ol: %.2f volts",V_ol);
mprintf("\nSignal swing : %.2f volts",Signal_swing);

//Outputs
//Vbe_oh: 1.15 volts
//Vbe_ol: 0.35 volts
//Signal swing : 0.80 volts
