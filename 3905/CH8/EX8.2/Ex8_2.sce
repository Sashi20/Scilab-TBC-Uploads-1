//Example 8.2, Page Number 444
//Capacitance of Metal Wire
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
L=10*(10^-2)                    //Length of wire in metres(m)
W=4*(10^-6)                      //Width of wire in metres(m)
C_layer=0.031*((10^-15)/(10^-12))                    //Interconnect layer capacitance per unit area between metal1 and substrate in farads per metre square(F/m^2)
C_fring=0.044*((10^-15)/(10^-6))            //Fringing capacitance between metal1 and substrate in farads per metre(F/m) 

//Outputs
C_area=L*W*C_layer           //Total area capacitance in farads(F)
C_fringing=L*2*C_fring           //Total fringing capacitance in farads(F)
//Factor '2' in C_fringing is to consider two sides of the wire.
C_total=C_area+C_fringing         //Total capacitance in farads(F)

//Results
mprintf("\nTotal area capacitance C_area: %.13f farads",C_area);
mprintf("\nTotal fringing capacitance C_fringing: %.13f farads",C_fringing);
mprintf("\nTotal capacitance C_total: %.13f farads",C_total);

//Outputs
//Total area capacitance C_area: 0.0000000000124 farads (or) 12.4 pF
//Total fringing capacitance C_fringing: 0.0000000000088 farads (or) 8.8 pF
//Total capacitance C_total: 0.0000000000212 farads (or) 21.2 pF
