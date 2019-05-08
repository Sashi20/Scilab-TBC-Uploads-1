//Example 2.15, Page Number 77
//Dynamic Behaviour of an npn Transistor  
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
beta_f=100              //Forward current gain
Vbe_on=0.75         //Forward bias Voltage across base and emitter in volts(V)
tou_f=10*(10^-12)       //Mean forward transit time in seconds(secs)
C_beo=20*(10^-15)     //Zero bias base emitter parasitic capacitance in farads(F)
C_bco=22*(10^-15)     //Zero bias base collector parasitic capacitance in farads(F)
C_cso=20*(10^-15)     //Zero bias base collector substrate parasitic capacitance in farads(F)
m=0.33       //Grading co-efficient is equal to (1/2) for abrupt junction and (1/3) for linear graded junction
phi_o=0.75               //Built in potential in volts(V)
Vcc=2         //Supply in volts(V)
Vo=1          //Initial voltage in volts(V)
Rb=5*(10^3)   //Base resistance in ohms(Ω)
Vce=2         //Voltage across collector and emitter(Vce=Vcc) in volts(V)
Vbe_high=0.75   //Voltage across base emmiter in forward bias in volts(V)
Vbe_low=0   //Voltage across base emmiter in reverse bias in volts(V)
Vbc_high=2   //Voltage across base collector in forward bias in volts(V)
Vbc_low=1.25   //Voltage across base collector in forward bias in volts(V)


//Outputs
Ib_to=(Vo-Vbe_on)/Rb    //Base current at t=0 in amperes(A)
Ib_t=(0-Vbe_on)/Rb        //Base current after switching input(changes direction) in amperes(A)
t_base=(beta_f*tou_f)*log((Ib_to-Ib_t)/-Ib_t)   //Time to remove excess base charge in seconds(secs)
Keq_be=-(phi_o^m)*[((phi_o-Vbe_high)^(1-m))-((phi_o-Vbe_low)^(1-m))]/((Vbe_high-Vbe_low)*(1-m))        //Device parameter
//Similarly for Base-Collector junction the above equation gives Keq_bc:
Keq_bc=0.68           //Device parameter
t_depl=2.2*Rb*((Keq_be*C_beo)+(Keq_bc*C_bco))        //Depletion region time constant in seconds(secs)

//Results
mprintf("\nBase current at t=0 is Ib_to : %.7f amperes",Ib_to);
mprintf("\nBase current after switching input is Ib_t: %.7f amperes",Ib_t);
mprintf("\nTime to remove excess base charge is t_base: %.13f seconds",t_base);
mprintf("\nKeq_be is Keq_be: %.2f ",Keq_be);
mprintf("\nKeq_bc is Keq_bc: %.2f",Keq_bc);
mprintf("\nTime to remove excess base charge is t_depl: %.13f seconds",t_depl);

//Outputs
//Base current at t=0 is Ib_to : 0.0000500 amperes (or) 50.0µA
//Base current after switching input is Ib_t: -0.0001500 amperes (or) 150.0 µA
//Time to remove excess base charge is t_base: 0.0000000002876 seconds (or) 287.6 psecs
//Keq_be is Keq_be: 1.49
//Keq_bc is Keq_bc: 0.68
//Time to remove excess base charge is t_depl: 0.0000000004929 seconds (or) 492.9 psecs
