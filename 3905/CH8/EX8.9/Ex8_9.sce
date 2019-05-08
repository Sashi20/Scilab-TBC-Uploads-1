//Example 8.9, Page Number 473
//RC Delay of Polysilicon Wire
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
L=1*(10^-3)                    //Length of wire in metres(m)
//Resistance is obtained by:R=(R_sheet*Length of wire)/(Width of wire)
R=10*((1000)^2)                      //Resistance of RC network in ohms(Ω)
C_layer=0.058*(10^-15)                    //Interconnect layer capacitance per unit area between metal1 and substrate in farads per metre square(F/m^2)
C_fring=0.043*(10^-15)            //Fringing capacitance between metal1 and substrate in farads per metre(F/m) 

//Outputs
C=(C_layer+(2*C_fring))                      //Total capacitance of wire in farads(F)
tp=0.38*R*C                   //Propogation delay of distributed RC network in seconds(secs)

//Results
mprintf("\nPropogation delay of distributed RC network tp: %.11f seconds",tp);

//Output
//Propogation delay of distributed RC network tp: 0.00000000055 seconds (or) 0.54 nsecs
