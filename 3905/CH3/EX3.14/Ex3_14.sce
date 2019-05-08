//Example 3.14, Page Number 163
//VTC of ECL Gate
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vcc=0      //Supply voltage in volts(V)
Vee=-5     //Supply voltage in volts(V)
Vref=-0.95 //Reference voltage in volts(V)
Iee=0.5*(10^-3)     //Coupled emmiter current in amperes(A)
Rc=1*(10^3)       //Collector resistance in ohms(Ω)
Rb=50*(10^3)       //Base resistance in ohms(Ω)
Is=10^-17           //Transport saturation current in amperes(A)
Ic=0.1*(10^-3)        //Collector current in amperes(A)
beta_f=100             //Maximun forward current gain
phi_t=26*(10^-3)       //Thermal voltage in volts(A)
Vswing=Iee*Rc        //Transition voltage swing in volts(V)

//Outputs
Vbe_on=phi_t*log(Ic/Is)     //Base-Emitter voltage in volts(V)
V_oh=Vcc-Vbe_on          //Output high level transition voltage in volts(V)
V_ol=Vcc-Vbe_on-(Vswing)    //Output low level transition voltage in volts(V)
V_ih=Vref+(phi_t*log(((Vswing)/(2*phi_t))-1))  //Input high level transition voltage in volts(V)
V_il=Vref-(phi_t*log(((Vswing)/(2*phi_t))-1))  //Input low level transition voltage in volts(V)
Vm=Vref                                //Inverter threshold in volts(V)

//Results
mprintf("\nBase Emmiter voltage in volts Vbe_on : %.2f volts",Vbe_on);
mprintf("\nVbe_oh: %.2f volts",V_oh);
mprintf("\nVbe_ol: %.2f volts",V_ol);
mprintf("\nVbe_ih: %.2f volts",V_ih);
mprintf("\nVbe_il: %.2f volts",V_il);
mprintf("\nInverter threshold Vm: %.2f volts",Vm);

//Outputs
//Base Emmiter voltage in volts Vbe_on : 0.77 volts
//Vbe_oh: -0.77 volts
//Vbe_ol: -1.27 volts
//Vbe_ih: -0.89 volts
//Vbe_il: -1.00 volts
//Inverter threshold Vm: -0.94 volts

