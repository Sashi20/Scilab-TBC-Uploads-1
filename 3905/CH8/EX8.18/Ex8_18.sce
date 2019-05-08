//Example 8.18, Page Number 500
//Thermal Bounds on Integration
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
delta_T=100                               //Maximum temperature difference between chip and environment in degree celsius(C)
theta=2.5               //Thermal resistance between chip and environment in celsius per watt(C/W)
E=0.1*(10^-12)                           //Switching energy of each gate in joule(J)

//Outputs
Ng_to_tp=(delta_T/(theta*E))                      //Ratio of ()Ng=Number of gates on chip,tp=Propgation delay) in gates per seconds(Gate/secs)

//Results
mprintf("\nMaximum number of gates on chip when all gates are simultaneously: %.1f gates per second",Ng_to_tp);

//Output
//Maximum number of gates on chip when all gates are simultaneously: 400000000000000.0 or 4*(10^5) gates/nanoseconds
