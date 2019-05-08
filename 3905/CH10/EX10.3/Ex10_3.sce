//Example 10.3, Page Number 565
//Voltage Swings in NOR and NAND ROM's
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vdd=5                     //Supply voltage in volts(V)
Vto_PMOS=-0.75                //Threshold voltage in volts(V)
//Vto_NMOS is assumed as abs(Vto_PMOS)
W_L_NMOS=9                      //(W/L) ratio of NMOS FET after considering lateral diffusion differences
V_ol=2.5        //Transition logic low level voltage in volts(V)

//Outputs
W_L_PMOS_NOR=(1-sqrt(1-(V_ol/(Vdd-Vto_PMOS))))*3*W_L_NMOS

//Due to series chaining , the value of Vol is a function of both size of memory and programming.For this series chaining a longer device has to be used for N transistors which unacceptable results for larger arrays.So,NAND ROM's are rarely used for arrays with more than 8 rows.
//(8X8):(W/L)p=0.62
//(512X512):(W/L)p=0.0097

//Results
mprintf("\n(W/L) ratio of PMOS FET: %.2f seconds",W_L_PMOS_NOR);

//Output
//(W/L) ratio of PMOS FET: 6.70 seconds



