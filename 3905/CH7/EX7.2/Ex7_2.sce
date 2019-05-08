//Example 7.2, Page Number 391
//Static Adder Design
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
tab_c0=1.63*(10^-9)              //Delay to generate carry output for inputs in seconds(secs)
tci_c0=0.32*(10^-9)              //Delay to generate carry output for input carry in seconds(secs)
tci_s=1*(10^-9)              //Delay to generate sum output for input carry in seconds(secs)
N=32                              //Number of bit adder

//Outputs
tadd=tab_c0+(N-2)*tci_c0+tci_s             //Adder delay in seconds(secs)

//Results
mprintf("\nAdder delay tadd: %.11f seconds",tadd);

//Output
//Adder delay tadd : 0.00000001223 seconds (or) 12.23 nsecs 

