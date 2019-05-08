//Example 3.18, Page Number 177
//Power Dissipation of ECL Inverter
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vcc=0      //Supply voltage in volts(V)
Vee=-5     //Supply voltage in volts(V)
Vref=-0.95 //Reference voltage in volts(V)
Iee=0.5*(10^-3)     //Coupled emitter current in amperes(A)
Rc=1*(10^3)       //Collector resistance in ohms(Ω)
Rb=50*(10^3)       //Base resistance in ohms(Ω)
Is=10^-17           //Transport saturation current in amperes(A)
Ic=0.1*(10^-3)        //Collector current in amperes(A)
beta_f=100             //Maximum forward current gain
phi_t=26*(10^-3)       //Thermal voltage in volts(A)
Vswing=Iee*Rc        //Transition voltage swing in volts(V)
Cl=60*(10^-15)         //Load capacitance in farads(F)
Cc=72.8*(10^-15)    //Collector capacitance in farads(F)
Ct=Cl+Cc           //Total switching capacitance in farads(F)
tp=127.5*(10^-12)           //Propogation delay in seconds(secs)

//Outputs
Vbe_on=phi_t*log(Ic/Is)     //Base-Emitter voltage in volts(V)
V_oh=Vcc-Vbe_on          //Output high level transition voltage in volts(V)
V_ol=Vcc-Vbe_on-(Vswing)    //Output low level transition voltage in volts(V)
f=(1/tp)                       //Maximum allowable switching frequency in hertz(Hz)
//Ignoring the power consumed in bias network
Pstat=(Vcc-Vee)*(Iee+(2*((((V_oh+V_ol)/2)-Vee)/Rb)))         //Static power consumption in watts(W)
Pdyn=Ct*(Vcc-Vee)*Vswing*f         //Dyanamic power consumption in watts(W)
Pt=Pstat+Pdyn             //Total power consumption in watts(W)

//Results
mprintf("\nStatic power consumption Pstat : %.4f watts",Pstat);
mprintf("\nDynamic power consumption Pdyn : %.4f watts",Pdyn);
mprintf("\nTotal power consumption Pt : %.4f watts",Pt);

//Outputs
//Static power consumption Pstat : 0.0033 watts (or) 3.3 mW
//Dynamic power consumption Pdyn : 0.0026 watts (or) 2.6 mW
//Total power consumption Pt : 0.0059 watts (or) 5.9 mW
