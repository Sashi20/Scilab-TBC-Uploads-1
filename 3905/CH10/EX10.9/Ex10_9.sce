//Example 10.9, Page Number 588
//IT DRAM Read-out 
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
C_bit=1*(10^-12)                //Bit line capacitance in farads(F)
V_pre=2.5              //Bit precharge voltage in volts(V)
Cs=50*(10^-15)                    //Cell capacitance in farads(F)
V_logic_high=3.5           //Cell voltage when logic high in volts(V)
V_logic_low=0           //Cell voltage when logic low in volts(V)

//Outputs
delta_Vswing_logic_low=(V_logic_low-V_pre)*(Cs/(Cs+C_bit))      //Voltage swing in bit line when logic low in volts(V)
delta_Vswing_logic_high=(V_logic_high-V_pre)*(Cs/(Cs+C_bit))               //Voltage swing in bit line when logic high in volts(V)

//Results
mprintf("\nVoltage swing in bit line when logic low delta_Vswing_logic_low: %.4f volts",delta_Vswing_logic_low);
mprintf("\nVoltage swing in bit line when logic high delta_Vswing_logic_high: %.3f volts",delta_Vswing_logic_high);


//Outputs
//Voltage swing in bit line when logic low delta_Vswing_logic_low: -0.1190 volts (or) -119.0 mV 
//Voltage swing in bit line when logic high delta_Vswing_logic_high: 0.048 volts (or) 48 mV

//NOTE:
//▲V(1)=60 mV according to the textbook, but above calculations using equation 10.5 on page no 588 gives ▲V(1)=48 mV 
