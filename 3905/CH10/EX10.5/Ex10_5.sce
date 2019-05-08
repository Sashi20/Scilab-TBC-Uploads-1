//Example 10.5, Page Number 569
//Propagation Delay of NOR RAM
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
M=512                  //Number of cells
C_gate_word=5.1*(10^-15)                //Word Gate capacitance in farads(F)
C_wire_word=0.65*(10^-15)                //Word Wire capacitance in farads(F)
C_word=C_gate_word+C_wire_word                 //Capacitance for generating word in farads(F)
R_word=35                            //Resistance in ohms(Ω)
C_gate_bit=2.6*(10^-15)                //Word Gate capacitance in farads(F)
C_wire_bit=0.8*(10^-15)                //Word Wire capacitance in farads(F)
Kp=5.3*(10^-6)               //Device paramter in ampere per voltage square(A/V^2)
Kn=19.6*(10^-6)               //Device paramter in ampere per voltage square(A/V^2)
//W_L_NMOS=(2.4/1.2)              //(W/L) ratio of NMOS transitor
//W_L_PMOS=(6/1.2)              //(W/L) ratio of PMOS transitor
W_Leff_NMOS=(2.4/0.9)              //(W/Leff) ratio of NMOS transitor
W_Leff_PMOS=(6/0.9)              //(W/Leff) ratio of PMOS transitor


//Outputs
//Word-Line Delay
t_word=0.38*(R_word*C_word)*((M)^2)              //Delay of didtributed RC line containg M cells in seconds(secs)
//Bit-Line Delay
C_bit=M*(C_gate_bit+C_wire_bit)           //Capacitance for generating a bit in farads(F)
Iav_HL=(1/2)*(W_Leff_NMOS)*(Kn)*((((4.25)^2)/2)+((4.25*3.75)-(((3.75)^2)/2)))-((1/2)*(W_Leff_PMOS)*(Kp)*((4.25*1.25)-(((1.25)^2)/2)))         //Average high to low level transition current in amperes(A)
t_HL=(C_bit*1.25)/Iav_HL                 //High to low response time in seconds(secs)
//By similar above procedure Iav_LH can be computed and is given by:
Iav_LH=0.36*(10^-3)     //Average low to high level transition current in amperes(A)
t_LH=(C_bit*1.25)/Iav_LH


//Results
mprintf("\nDelay of didtributed RC line containg M cells t_word: %.10f seconds",t_word);
mprintf("\nCapacitance for generating a bit C_bit: %.13f farads",C_bit);
mprintf("\nAverage high to low level transition current Iav_HL: %.6f amperes",Iav_HL);
mprintf("\nHigh to low response time t_HL: %.10f seconds",t_HL);
mprintf("\nAverage low to high level transition current Iav_LH: %.6f amperes",Iav_LH);
mprintf("\nLow to high response time t_LH: %.10f seconds",t_LH);



//Outputs
//Delay of didtributed RC line containg M cells t_word: 0.0000000200 seconds (or) 20 nsecs
//Capacitance for generating a bit C_bit: 0.0000000000017 farads (or) 1.7 picosecs
//Average high to low level transition current Iav_HL: 0.000389 amperes (or) 0.389 mA
//High to low response time t_HL: 0.0000000056 seconds (or) 5.6 nsecs
//Average low to high level transition current Iav_LH: 0.000360 amperes (or) 0.360 mA 
//Low to high response time t_LH: 0.0000000060 seconds (or) 6.0 nsecs
