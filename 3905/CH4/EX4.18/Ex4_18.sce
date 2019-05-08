//Example 4.18, Page Number 251
//Optimizing Switching Activity at the Logic Level
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
P_A=0.5            //Transition probability of input signal '(A=1)'
P_B=0.2            //Transition probability of input signal '(B=1)'
P_C=0.1            //Transition probability of input signal '(C=1)'

//Outputs
//As both the circuits implememt identical logic functionality, the output node 'Z' is equal in both the cases.So, difference in activity occurs at intermediate nodes:
Activity_first=(1-(P_A*P_B))*(P_A*P_B)        //Switching activity of first circuit
Activity_second=(1-(P_B*P_C))*(P_B*P_C)        //Switching activity of second circuit

//Results
mprintf("\nSwitching activity of first circuit : %.2f",Activity_first);
mprintf("\nSwitching activity of second circuit : %.4f",Activity_second)

//From the results we get to learn that it is benificial to postpone the introduction of signals with higher transition rate(i.e signals with signal probability close to )

//Outputs
//Switching activity of first circuit : 0.09
//Switching activity of second circuit : 0.0196

