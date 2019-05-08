//Example 3.11, Page Number 151
//VTC of an RTL Inverter
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vcc=5      //Supply voltage in volts(V)
Rc=1*(10^3)       //Collector resistance in ohms(Ω)
Rb=10*(10^3)       //Base resistance in ohms(Ω)
Re=20       //Emitter resistance in ohms(Ω)
Rc1=75       //Series collector resistance in ohms(Ω)
Vce_sat=0.1         //Collector-Emmiter saturation voltage in volts(V)
Vbe_eos=0.8           //Base-Emmiter voltage in volts(V)
beta_f=100             //Maximum forward current gain
//The major discrepancy is the value to V_ol due to which dc problems occur and to have a reasonable V_ol value Vin_eos>Vcc is maintained to reduce the gain in transient region
Vcc1=0.38          //Supply voltgage in volts(V)

//Outputs
Ib=((Vcc-Vce_sat)/(Rc*beta_f))             //Base current in amperes(A)
Vin_eos=Vbe_eos+(Ib*Rb)                //Input voltage at eos in volts(V)
//In the saturation mode,the collector current Ic:
Ic=Vcc1/Rc1                         //Collector current in amperes(A)
Vce_extra=Ic*(Rc1+Re)                //Extra voltage drop caused over collector-emitter terminals in volts(V)

//Results
mprintf("\nBase Current Ib: %.7f amperes",Ib);
mprintf("\nInput Voltage at eos Vin_eos: %.5f volts",Vin_eos);
mprintf("\nCollector Current Ic: %.4f amperes",Ic);
mprintf("\nExtra voltage drop caused over collector-emitter terminals: %.2f volts",Vce_extra);

//Outputs
//Base Current Ib: 0.0000490 amperes (or) 49.0µA
//Input Voltage at eos Vin_eos: 1.29000 volts
//Collector Current Ic: 0.0051 amperes (or) 5.1mA
//Extra voltage drop caused over collector-emitter terminals: 0.48 volts
