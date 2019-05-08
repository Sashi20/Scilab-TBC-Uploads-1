//Example 5.4, Page Number 279
//CML Gate Characteristics
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vcc=0                     //Supply voltage in volts(V)
Vee=-1.7                     //Supply voltage in volts(V)
phi_t=26*(10^-3)       //Thermal voltage in volts(A)
Vref=-0.05                   //Reference voltage in volts(V)
Iee=0.4*(10^-3)               //Emitter  current supply in amperes(A)
Rc=625                        //Collector resistance in ohms(Ω)
V_ih=-0.085                   //Input high level transition voltage using unity gain definition in volts(V)
V_il=-0.165                   //Input low level transition voltage using unity gain definition in volts(V)
Vbe_on=0                  //Base-Emitter voltage in volts(V)
//Vbe_on is zeo as Ic=Is (Vbe_on=Φt*log(Ic/Is)) i.e (log(1)=0)
C_fanout=60*(10^-15)           //Fanout capacitance in farads(F)
C_cs1=47*(10^-15)     //Collector-Source junction capacitance in farads(F)
C_bc1=22*(10^-15)     //Base-collector junction capacitance in farads(F)
Cc=((0.67*C_cs1)+(2*1.01*C_bc1))       //Collector capacitance in farads(F)
//Cbc1 is accounted twice to incoprate miller effect


//Outputs
Vswing=Iee*Rc                    //Output voltage swing in volts(V)
V_oh=Vcc-Vbe_on          //Output high level transition voltage in volts(V)
V_ol=Vcc-Vbe_on-(Vswing)    //Output low level transition voltage in volts(V)
NM_H=V_oh-V_ih               //Noise margin of high level transition in volts(V)
NM_L=V_il-V_ol               //Noise margin of low level transition in volts(V)
Cl=C_fanout+Cc               //Output capacitance in farads(F)
tp=0.69*Rc*Cl                 //Propogation delay in seconds(secs)
Pstat=(abs(Vee)*Iee)           //Static output power in watts(W)
Pdyn=Cl*(Vcc-Vee)*(Vswing/tp)   //Dynamic output power in watts(W)

//Results
mprintf("\nOutput voltage swing : %.2f volts",Vswing);
mprintf("\nVbe_oh: %.2f volts",V_oh);
mprintf("\nVbe_ol: %.2f volts",V_ol);
mprintf("\nVbe_ih: %.2f volts",V_ih);
mprintf("\nVbe_il: %.2f volts",V_il);
mprintf("\nNoise margin of high level transition: %.2f volts",NM_H);
mprintf("\nNoise margin of low level transition: %.2f volts",NM_L);
mprintf("\nOutput capacitance: %.16f farads",Cl);
mprintf("\nPropogation delay: %.13f seconds",tp);
mprintf("\nStatic output power: %.4f watts",Pstat);
mprintf("\nDynamic output power: %.4f watts",Pdyn);

//Outputs 
//Output voltage swing : 0.25 volts
//Vbe_oh: 0.00 volts
//Vbe_ol: -0.25 volts
//Vbe_ih: -0.09 volts
//Vbe_il: -0.17 volts
//Noise margin of high level transition: 0.09 volts
//Noise margin of low level transition: 0.08 volts
//Output capacitance: 0.0000000000001359 farads (or) 135.9 fF
//Propogation delay: 0.0000000000586 seconds (or) 58.6 picosecs
//Static output power: 0.0007 watts (or) 0.7 mW
//Dynamic output power: 0.0010 watts (or) 1.0 mW
