//Example 4.2, Page Number 194
//Computing Ron
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vdd=5          //Supply voltage in volts(V)
//Values from table 3.3, Pg no:136
Id_n1=0.46*(10^-3)          //Drain current in NMOS when (Vout=Vdd) in amperes(A) 
Id_n2=0.29*(10^-3)          //Drain current in NMOS when (Vout=Vdd/2) in amperes(A)
Id_p1=0.57*(10^-3)          //Drain current in PMOS when (Vout=Vdd) in amperes(A)
Id_p2=0.24*(10^-3)          //Drain current in PMOS when (Vout=Vdd) in amperes(A)

//Outputs
Rn1=(1/2)*((Vdd/Id_n1)+(Vdd/(2*Id_n2)))          //Resistance when (W/Leff =2) in ohms(Ω)
Rn2=Rn1*2                //Resistance when (W/Leff =1) in ohms(Ω)
Rp1=(1/2)*((Vdd/Id_p1)+(Vdd/(2*Id_p2)))          //Resistance when (W/Leff =6) in ohms(Ω)
Rp2=Rp1*6          //Resistance when (W/Leff =1) in ohms(Ω)


//Results
mprintf("\nResistance when (W/Leff =2) Rn1 : %.1f ohms",Rn1);
mprintf("\nResistance when (W/Leff =1) Rn2 : %.1f ohms",Rn2);
mprintf("\nResistance when (W/Leff =6) Rp1 : %.1f ohms",Rp1);
mprintf("\nResistance when (W/Leff =1) Rp1 : %.1f ohms",Rp2);

//Outputs
//Resistance when (W/Leff =2) Rn1 : 9745.1 ohms (or) 9.7451 kΩ
//Resistance when (W/Leff =1) Rn2 : 19490.2 ohms(or) 19.4902 kΩ
//Resistance when (W/Leff =6) Rp1 : 9594.2 ohms (or) 9.5942 kΩ
//Resistance when (W/Leff =1) Rp1 : 57565.7 ohms (or) 57.5657 kΩ
