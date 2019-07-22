//Example 2.4, Page Number 28
//Circuit Analysis
clc;

//Inputs
//Given resistances in circuit:
R1=1000              //Resistance in ohms
R2=2000              //Resistance in ohms
R3=3000              //Resistance in ohms
R4=4000              //Resistance in ohms
R5=5000              //Resistance in ohms
R6=6000              //Resistance in ohms
//Given voltage sources in circuit:
V1=10                 //Voltage source in volts
V2=20                 //Voltage source in volts

//Solving given resistances into an equivalent circuit:
//Outputs
//Resistors R2 and R4 are in series,with an equivalent resistance of(R2+R4),and this is in parallel with resistor R3
R234=(((R2+R4)*(R3))/((R2+R4)+R3))      //Equivalent resistance of R2,R3,R4 in ohms
R56=((R5*R6)/(R5+R6))      //Equivalent resistance of R5,R6 in ohms
//Applying KVL in left loop:
Iout=(V1/R1)                  //Current through resistance R1 in amperes
//Voltage drop across resistance R234 determined from Voltage division rule in the assumed current direction of I234 throiugh R234:
V234=((V1-V2)*((R234)/(R234+R56)))        //Voltage across resistance R234 in volts
//The desired output voltage Vout calculated from V1 and voltage drop V234 across R234 resistance is :
Vout=((V1)-(V234))             //Desired output voltage to be calculated in volts

//Results
mprintf("Equivalent resistance of R2,R3,R4: %.5f ohms\n",R234);
mprintf("Equivalent resistance of R5,R6 : %.5f ohms\n",R56);
mprintf("Current through resistance R1: %.5f ampere\n",Iout);
mprintf("Voltage across resistance R234: %.5f volts\n",V234);
mprintf("Desired output voltage to be calculated: %.5f volts\n",Vout);

//Outputs
//Equivalent resistance of R2,R3,R4: 2000.00000 ohms
//Equivalent resistance of R5,R6 : 2727.27273 ohms
//Current through resistance R1: 0.01000 ampere
//Voltage across resistance R234: -4.23077 volts
//Desired output voltage to be calculated: 14.23077 volts
