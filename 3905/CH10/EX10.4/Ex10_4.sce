//Example 10.4, Page Number 566
//Word and Bit Line Parasitics
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
C_layer_poly=0.058*(10^-15)              //Interconncet layer capacitance between polysilicon to substrate per unit area in farads per cell(F/m^2)
C_layer_metal=0.031*(10^-15)              //Interconncet layer capacitance between metal to substrate per unit area in farads per cell(F)
C_fring=0.043*(10^-15)              //Fringing capacitance per cell in farads(F)
R_sheet_metal=0.07                            //Sheet resistance per unit area in ohm per area(Ω/▀)
R_sheet_diffusion=10                            //Sheet resistance per unit area in ohm per area(Ω/▀)
lamda=1                                //Channel modulation in volt inverse(1/V)

//Outputs
//NOR 
//Word-Line Parasictics
Resistance_cell_word_NOR=(7/2)*R_sheet_diffusion                    //Resistance per unit memory cell in ohms(Ω)
wire_capacitance_cell_word_NOR=(((7*lamda)*(2*lamda))*((0.6)^2)*C_layer_poly)+2*((7*lamda)*0.6)*C_fring   //Wire capacitance of unit cell in farads(F)
Gate_capacitance_cell_NOR=((4*lamda)*(2*lamda))*((0.6)^2)*1.76*(10^-15)          //Gate capacitance of ell in farads(F)
//Bit-Line Parasitcics
Resistance_cell_bit_NOR=(8.5/4)*R_sheet_metal                    //Resistance per unit memory cell in ohms(Ω)
wire_capacitance_cell_bit_NOR=((8.5*lamda)*(4*lamda))*((0.6)^2)*C_layer_metal+2*((8.5*lamda)*0.6)*C_fring   //Wire capacitance of unit cell in farads(F)
drain_capacitance_cell_NOR=((((3*lamda)*(4*lamda))*((0.6)^2)*(0.3))+(2*(3*lamda)*0.6*0.8))*(0.375*(10^-15))+((4*lamda)*0.6*(0.43*(10^-15)))
//NAND
//Word-Line Parasictics
Resistance_cell_word_NAND=(6/2)*R_sheet_diffusion                    //Resistance per unit memory cell in ohms(Ω)
wire_capacitance_cell_word_NAND=(((6*lamda)*(2*lamda))*((0.6)^2)*C_layer_poly)+2*((6*lamda)*0.6)*C_fring   //Wire capacitance of unit cell in farads(F)
Gate_capacitance_cell_NAND=((3*lamda)*(2*lamda))*((0.6)^2)*(1.76*(10^-15))          //Gate capacitance of ell in farads(F)
//Bit-Line Parasitcics
Resistance_cell_bit_NAND=10*(10^3)                    //Resistance per unit memory cell in ohms(Ω)
//wire_capacitance_cell_bit:Included in diffusion capacitance in farads(F)
source_drain_capacitance_cell_NAND=(((3*lamda)*(3*lamda))*((0.6)^2)*0.3*(10^-15))+(2*3*lamda*0.6*0.8*0.345*(10^-15))+(3*lamda*2*lamda*((0.6)^2)*1.7*(10^-15))


//Results
mprintf("\nResistance per unit NOR memory cell Resistance_cell_word_NOR: %.1f ohms",Resistance_cell_word_NOR);
mprintf("\nWire capacitance of unit NOR cell wire_capacitance_cell_word_NOR: %.18f farads",wire_capacitance_cell_word_NOR);
mprintf("\nGate capacitance of NOR cell Gate_capacitance_cell_NOR: %.18f farads",Gate_capacitance_cell_NOR);
mprintf("\nResistance per unit NOR memory cell Resistance_cell_bit_NOR: %.2f ohms",Resistance_cell_bit_NOR);
mprintf("\nWire capacitance of unit NOR cell wire_capacitance_cell_bit_NOR: %.18f farads",wire_capacitance_cell_bit_NOR);
mprintf("\nGate capacitance of NOR cell drain_capacitance_cell_NOR: %.18f farads",drain_capacitance_cell_NOR);
mprintf("\nResistance per unit NAND memory cell Resistance_cell_word_NAND: %.1f ohms",Resistance_cell_word_NAND);
mprintf("\nWire capacitance of unit NAND cell wire_capacitance_cell_word_NAND: %.18f farads",wire_capacitance_cell_word_NAND);
mprintf("\nGate capacitance of NAND cell Gate_capacitance_cell_NAND: %.18f farads",Gate_capacitance_cell_NAND);
mprintf("\nResistance per unit NAND memory cell Resistance_cell_bit_NAND: %.1f ohms",Resistance_cell_bit_NAND);
mprintf("\nGate capacitance of NAND cell source_drain_capacitance_cell_NAND: %.16f farads",source_drain_capacitance_cell_NAND);


//Outputs
//Resistance per unit NOR memory cell Resistance_cell_word_NOR: 35.0 ohms
//Wire capacitance of unit NOR cell wire_capacitance_cell_word_NOR: 0.000000000000000654 farads (or) 0.654 fF
//Gate capacitance of NOR cell Gate_capacitance_cell_NOR: 0.000000000000005069 farads (or) 5.069 fF
//Resistance per unit NOR memory cell Resistance_cell_bit_NOR: 0.15 ohms
//Wire capacitance of unit NOR cell wire_capacitance_cell_bit_NOR: 0.000000000000000818 farads (or) 0.818 fF
//Gate capacitance of NOR cell drain_capacitance_cell_NOR: 0.000000000000002598 farads (or) 2.598 fF

//Resistance per unit NAND memory cell Resistance_cell_word_NAND: 30.0 ohms
//Wire capacitance of unit NAND cell wire_capacitance_cell_word_NAND: 0.000000000000000560 farads (or) 0.56 fF
//Gate capacitance of NAND cell Gate_capacitance_cell_NAND: 0.000000000000003802 farads (or) 3.802 fF
//Resistance per unit NAND memory cell Resistance_cell_bit_NAND: 10000.0 ohms (or) 10 kΩ
//Gate capacitance of NAND cell source_drain_capacitance_cell_NAND: 0.0000000000000056 farads (or) 5.6 fF
