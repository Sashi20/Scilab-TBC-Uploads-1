//Example 3.4, Page Number 127
//VTC of a CMOS Inverter
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Kn=80*(10^-6)    //Transistor parameters in A/V^2
Kp=27*(10^-6)      //Transistor parameter in A/V^2
Vdd=5      //Supply voltage in volts(V)
W_to_L_PMOS=5.4/1.2   //(W/L) ratio of PMOS transistor
W_to_L_NMOS=1.8/1.2   //(W/L) ratio of NMOS transistor
//DC Parameters:
V_ol=0            //Output lowel level transition voltage in volts(V)
V_oh=5            //Output high level transition voltage in volts(V)
Vtn=0.74              //Threshold voltage of NMOS in volts(V)
Vtp=-0.74              //Threshold voltage of PMOS in volts(V)

//Outputs
//To obtain Vih,the following equations have to be solved:
//Kn*[(V_ih-Vtn)*Vout-(((Vout)^2)/2)]=(Kp/2)*[Vdd-V_ih-|Vtp|]^2 which yeilds:
V_ih=2.92                    //Input high level transition voltage in volts(V)
Vout=0.42                     //Output voltage in volts(V)
NM_H=V_oh-V_ih                //Noise margin for logic high in volts(V)
//Similary,for V_il
V_il=2.06               //Input low level transition voltage in volts(V)
NM_L=V_il-V_ol                //Noise margin for logic low in volts(V)
//Given that r=1.01 where r=(sqrt(Kp´/Kn´))
r=1.01
Vm=((r*(Vdd-abs(Vtp))+Vtn)/(1+r))           //Inverter threshold in volts(V)

//Results
mprintf("\nInput high level transition voltage V_ih: %.2f volts",V_ih);
mprintf("\nOutput voltage Vout: %.2f volts",Vout);
mprintf("\nNoise margin for logic high NM_H: %.2f volts",NM_H);
mprintf("\nInput low level transition voltage V_il: %.2f volts",V_il);
mprintf("\nNoise margin for logic low NM_L: %.2f volts",NM_L);
mprintf("\nInverter threshold Vm: %.2f volts",Vm);

//Outputs
//Input high level transition voltage V_ih: 2.92 volts
//Output voltage Vout: 0.42 volts
//Noise margin for logic high NM_H: 2.08 volts
//Input low level transition voltage V_il: 2.06 volts
//Noise margin for logic low NM_L: 2.06 volts
//Inverter threshold Vm: 2.51 volts

