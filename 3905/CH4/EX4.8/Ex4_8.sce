//Example 4.8, Page Number 216
//Pass-Transistor Chain
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
//Parameter Values for 1.2µm CMOS process
Req=10*(10^3)        //Equivalent resistance in ohms(Ω)
C=10*(10^-15)        //Capacitance in farads(F)
tp_buf=0.5*(10^-9)          //Propogation delay of each buffer in seconds(secs)

//Outputs
m_opt=1.7*(sqrt(tp_buf/(C*Req)))      //Optimal number of switches between buffers

//Results
mprintf("\nOptimal number of switches between buffers m_opt : %.2f",m_opt);

//Output 
//Optimal number of switches between buffers m_opt : 3.80 




