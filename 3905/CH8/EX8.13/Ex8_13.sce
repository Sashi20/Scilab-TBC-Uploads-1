//Example 8.13, Page Number 478
//Noise Induced by Inductive Bonding Wires and Package Pins
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Cl=20*(10^-12)                        //Driving load capacitance in farads(F)
V_swing=5                            //Voltage swing in volts(V)
tf=0.9                                //Final output reach in seconds(secs)
ti=0.1                                //Initial output reach in seconds(secs)
tr=4*(10^-9)                           //Rise time in seconds(secs)
L=10*(10^-9)                           //Series inductance in henry(H) 
dt=2*(10^-9)                            //Output swing time in seconds(secs)
Ip=40*(10^-3)                            //Peak current in amperes(A)

//Outputs
Iavg=(Cl*(tf-ti)*V_swing)/tr                   //Average curremt to drive output in amperes(A)
Vl=L*(Ip/dt)                                //Voltage drop across inductor in volts(V)

//Results
mprintf("\nPropogation delay of distributed RC network: %.4f amperes",Iavg);
mprintf("\nVoltage drop across inductor: %.1f volts",Vl);

//Outputs
//Propogation delay of distributed RC network: 0.0200 amperes (or) 20 mA
//Voltage drop across inductor: 0.2 volts
