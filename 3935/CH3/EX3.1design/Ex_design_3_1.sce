//Design Example 3.1, Page Number 84
//Zener Diode Voltage Regulator Design
clc;

//Inputs
Rl_max=240        //Maximum load resistance in ohms
Pz_max=1               //Maximum power rating of the zener diode in watts
Vin=24       //Nominal input voltage in volts'
Vz=15              //Zener breakdown voltage in volts
 
//Outputs
R_min=(((Vin-Vz)/(Pz_max+((Vz^2)/(Rl_max))))*(Vz))         //Minimum required current-limiting resistance in ohms

//Results
mprintf("Minimum required current-limiting resistance: %.5f ohms\n",R_min);
//The closest acceptable standard resistance value is 75 ohms

//Outputs
//Minimum required current-limiting resistance: 69.67742 ohms
