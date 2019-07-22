//Example 2.7, Page Number 42
//AC Circuit Analysis
clc;

//Inputs
R1=1000                            //Resistance in ohms
R2=3000                            //Resistance in ohms
C=0.2*(10^-6)                    //Capacitance  in farads
L=0.5                     //Inductance in henry 
//Vin=5*cos(3000*t+(pi/2))         Input Voltage in volts
//From the given input signal we can derive below parameters:
w=3000             //Input signal radian frequency in radian per second

//Outputs
Vin=(5*%i)                 //Input signal in rectangular form with signal amplitude of 5V and phase of 90 degrees in volts
Zc=(((-1)/(w*C))*(%i))        //Complex form of the capacitor impedance in ohms
Zl=(((w*L))*(%i))        //Complex form of the capacitor impedance in ohms
R2_Zl=((R2)+(Zl))           //Complex form of combined impedence of R2 and Zl in ohms
R2_Zl_Zc=(((R2_Zl)*(Zc))/(R2_Zl+Zc))           //Complex form of combined impedance of parallel combination of R2_Zl and Zc in ohms
Zeq=((R2_Zl_Zc)+(R1))                        //Complex form of equivalent impedance of the entire circuit in ohms 
I1=(Vin/Zeq)                     //Current through R1 resistance in amperes
[mag0,phase0]=polar(I1)                      //Polar form of current I1 with magnitude in amperes and phase in radian

//Using current divison rule:
I=(((R2+Zl)/((R2+Zl)+Zc))*(I1))           //Current through capacitor in amperes
[mag1,phase1]=polar(I)                      //Polar form of current I with magnitude in amperes and phase in radian

//so the capacitor current leads the input reference by 159.8 or 2.789 rad, and the resulting current is 
//I(t)=2.22cos(3000t+2.789)mA

//Results
disp(Vin,"Input signal in rectangular form in volts:");
disp(Zc,"Complex form of the capacitor impedance in ohms:");
disp(Zl,"Complex form of the inductance impedance in ohms:");
disp(R2_Zl,"Complex form of combined impedence of R2 and Zl in ohms:");
disp(R2_Zl_Zc,"Complex form of combined impedance of parallel combination of R2_Zl and Zc in ohms:");
disp(Zeq,"Complex form of equivalent impedance of the entire circuit in amperes:");
disp(I1,"Current through R1 resistance in amperes:");
disp(I,"Current through capacitor in amperes:");
disp(mag0,"Polar form of current I1 with magnitude in amperes:");
disp(phase0,"Polar form of current I1 with phase in radian:");
disp(mag1,"Polar form of current I with magnitude in amperes:");
disp(phase1,"Polar form of current I with phase in radian:");
printf("Resulting current in amperes:0.0022224*cos(3000*t+ 2.7886023) amperes")

//Outputs
// Complex form of the inductance impedance in ohms:1500.i 
//Complex form of combined impedence of R2 and Zl in ohms:3000. + 1500.i
//Complex form of combined impedance of parallel combination of R2_Zl and Zc in ohms:923.07692 - 1615.3846i
//Complex form of equivalent impedance of the entire circuit in amperes:1923.0769 - 1615.3846i
//Current through R1 resistance in amperes:-0.0012805 + 0.0015244i
//Current through capacitor in amperes:-0.0020854 + 0.0007683i
//Polar form of current I1 with magnitude in amperes:0.0019908  
//Polar form of current I1 with phase in radian:2.2694562
//Polar form of current I with magnitude in amperes:0.0022224  
//Polar form of current I with phase in radian:2.7886023  
//Resulting current in amperes:0.0022224*cos(3000*t+ 2.7886023) amperes



//Phase angles of polar forms are in radian.
