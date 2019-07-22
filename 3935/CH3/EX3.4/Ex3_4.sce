//Example 3.4, Page Number 94
//Guaranteeing That a Transistor Is in Saturation
clc;

//Inputs
Ic_max=200*(10^-3)               //Maximum collector current in amperes
Vce_sat=0.2                     //Collector-Emitter saturation current in volts
Beta=100           //Common emitter DC current gain 
Vcc=10                  //DC supply voltage in volts 
Vbe=0.7               //Base-Emitter saturation current in volts
Rb=10*(10^3)            //Base resistor in ohms
Rc=(10^3)            //Collector resistor in ohms
 
//Outputs
Ic=(Vcc-Ic_max)/Rc               //Collector current in amperes
//Because the DC current gain hFE(Beta) is about 100,Ib must be at least Ic/100 or 0.098mA.Because Vbe=0.7 V
Ib=(Ic/100)                     //Base current in amperes
//Base current can be related to the input voltage as: 
Vin_min=(Ib*Rb)+Vbe             //Minimum input voltage required for saturation in volts

//Results
mprintf("Minimum input voltage required for saturation: %.5f volts\n",Vin_min);


//Outputs
// Minimum input voltage required for saturation: 1.68000 volts



//Normally you would use a voltage larger than this (e.g., 2 to 5 times larger) to ensure that the transistor is fully saturated, even with variances in parameters.
 
