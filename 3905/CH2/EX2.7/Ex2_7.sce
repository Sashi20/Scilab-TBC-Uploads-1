//Example 2.7, Page Number 35
//Diode Transient Response
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
R_src=50*(10^3)     //Source resistance in ohms(Ω)
I1=1*(10^-3)         //Initial current in amperes(A)
I2=-0.1*(10^-3)         //Final current in amperes(A)
Is=2*(10^-16)     // Saturation current of the diode in amperes(A)
Cjo=0.2*(10^-12)     //Capacitance of junction at zero bias in farads(F)
tou_t=5*(10^-9)        // Mean time in seconds(secs)
phi_o=0.65         //Built-in potential at zero bias in volts(V)
phi_t=26*(10^-3)               //Thermal voltage in volts(V)
m=0.5        //Grading co-efficient is equal to (1/2) for abrupt junction and (1/3) for linear graded junction
Keq=0.51              //Device parameter

//Outputs
Id=Is*(exp((Vd/phi_t))-1) //Diode equation to obtain diode current(Id)in amperes(A)
Vd_on=phi_t*log(Id/Is)    //Steady state voltage of diode when diode is on in volts(V)
Vd_off=I2*R_src         //Steady state voltage of diode when diode is off in volts(V)
t1=tou_t*log((I1-I2)/-I2)  //Length of various intervals in turn off transients in seconds(secs)
Cj=Keq*Cjo    //Average junction capacitance in farads per metre square(F/m^2)
tou_90_off=2.2*tou_t         //Time to reach 90% of final value(90% transition point[t2-t1]]) in seconds(secs)
T_off=t1+tou_90_off        //Total turn off time in seconds(secs)
t3=R_src*Cj*log((I1-I2)/I1)  //Length of various intervals in turn on transients in seconds(secs)
tou_90_on=2.2*tou_t         //Time to reach 90% of final value(90% transition point[t4-t3]]) in seconds(secs)
T_on=t3+tou_90_on            ////Total turn on time in seconds(secs)

//Results
mprintf("Steady state voltage when diode is on(Vd_on) is is: %.2f volts",Vd_on)
mprintf("\nSteady state voltage when diode is off is(Vd_on) is: %.1f volts",Vd_off)
mprintf("\nTransient time t1 is: %.13f secs",t1)
mprintf("\nAverage junction capacitance(Cj): %.15f farads",Cj)
mprintf("\nTransition point at 90 percent of final value(t2-t1): %.10f secs",tou_90_off)
mprintf("\nTotal turn off time(T_off): %.13f secs",T_off)
mprintf("\nTransient time t3: %.13f secs",t3)
mprintf("\nTransition point at 90 percent of final value(t4-t3): %.10f secs",tou_90_on)
mprintf("\nTotal turn off time(T_on): %.13f secs",T_on)

//Outputs
// Steady state voltage when diode is on(Vd_on) is is: 0.75 volts
//Steady state voltage when diode is off is(Vd_on) is: -5.0 volts
//Transient time t1 is: 0.0000000119895 secs (or) 11.9nsecs
//Average junction capacitance(Cj): 0.000000000000102 farads (or) 0.102 picofarads
//Transition point at 90 percent of final value(t2-t1): 0.0000000110 secs (or) 11.0 nsecs
//Total turn off time(T_off): 0.0000000229895 secs (or) 22.9895 nsecs
//Transient time t3: 0.0000000004861 secs (or) 0.4861 nsecs
//Transition point at 90 percent of final value(t4-t3): 0.0000000110 secs (or) 11.0 nsecs
//Total turn off time(T_on): 0.0000000114861 secs (or) 11.4861 nsecs
