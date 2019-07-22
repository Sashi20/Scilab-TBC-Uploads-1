//Example 2.5, Page Number 34
//Input and Output Impedance
clc;

//Inputs
//Given parameters of the circuit:
Vs=10              //Given source voltage in volts
R1=1000               //Resistance in ohms
R2=1000               //Resistance in ohms
Zin=1*(10^6)            //Input impedence of voltmeter in ohms
Zout=50            //Output impedence of voltage source in ohms

//Outputs
Req=((R1*R2)/(R1+R2))     //Equivalent resistance due to resistance R1 and R2 in ohms
R_eq=(((Req*Zin)/(Req+Zin))+Zout)          //Equivalent resistance due to resistance R1,input impedence of voltmeter Zin and output impedence of voltage source Zout in ohms
Vm=(((R_eq-Zout)/(R_eq))*(Vs))          //Actual voltage Vm measured by voltmeter in volts
//The measured voltage Vm equals Vs for Zin=infinty and Zout=0.

//Results
mprintf("Equivalent resistance due to resistance R1 and R2: %.5f ohms\n",Req);
mprintf("Equivalent resistance due to resistance R1,input impedence of voltmeter Zin and output impedence of voltage source Zout: %.5f ohms\n",R_eq);
mprintf("Actual voltage Vm measured by voltmeter: %.5f volts\n",Vm);

//Outputs
//Equivalent resistance due to resistance R1 and R2: 500.00000 ohms
//Equivalent resistance due to resistance R1,input impedence of voltmeter Zin and output impedence of voltage source Zout: 549.75012 ohms
//Actual voltage Vm measured by voltmeter: 9.09050 volts
