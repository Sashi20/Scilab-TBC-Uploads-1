//Design Example 3.2, Page Number 98
//LED Switch
clc;

//Inputs
Vout_min=0            //Output minimum voltage in volts
Vout_max=5            //Output maximum voltage in volts
Vcc=5               //DC supply voltage in volts
Iout_max=5*(10^-3)         //Maximum output current in amperes
Vbe=0.7                    //Base-Emitter voltage in volts
Vce=0.2                    //Collector-Emitter voltage in volts
Rc=100             //Collector resistance in ohms 
Rb=10*(10^3)             //Base resistance in ohms 
//The LED requires 20–40 mA to provide a bright display.
Vf_drop=2             //Forward bias voltage drop of LED in volts
 
//Outputs
//When the digital output is 0V,the transistor is in cutoff:
Ib_cutoff=(Vcc-Vbe)/Rb                      //Base current when transistor is in cutoff in amperes
//When the digital output is 5V,the transistor is in saturation:
Ic_sat=(Vcc-Vf_drop-Vce)/Rc                  //Collector current when transistor is in saturation in amperes
//The 100 ohm collector resistance limits the LED current to a value within the desired range for the LED to be bright (20–40) mA

//Results
mprintf("Base current when transistor is in cutoff: %.5f amperes\n",Ib_cutoff);
mprintf("Collector current when transistor is in saturation: %.5f amperes\n",Ic_sat);

//Outputs
//Base current when transistor is in cutoff: 0.00043 amperes
//Collector current when transistor is in saturation: 0.02800 amperes



 
