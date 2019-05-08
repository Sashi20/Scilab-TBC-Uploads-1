//Example 3.12, Page Number 153
//Effect of Fanout on VTC of the RTL Inverter
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vcc=5      //Supply voltage in volts(V)
Rc=1*(10^3)       //Collector resistance in ohms(Ω)
Rb=10*(10^3)       //Base resistance in ohms(Ω)
//Re=20       //Emitter resistance in ohms(Ω)
//Rc1=75       //Series collector resistance in ohms(Ω)
Vbe_sat=0.8         //Base-Emmiter saturation voltage in volts(V)
//Vcc1=0.38          //Supply voltgage in volts(V)
N=5      //Number of fanouts

//Outputs
Vout=(Vcc+(N*(Rc/Rb)*Vbe_sat))/(1+(N*(Rc/Rb)))           //Output voltage in volts(V)
//For large values for N,Vout eventually approaches Vbe_sat=0.8V which means that the NM_H is reduced to zero(or is even negative)

//Results
mprintf("\nOutput Voltage Vout: %.2f volts",Vout);


//Outputs
//Output Voltage Vout: 3.60 volts

