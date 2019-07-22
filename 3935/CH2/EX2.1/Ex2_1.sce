//Example 2.1, Page Number 16
//Resistance of a Wire
clc;

//Inputs
roh = 1.7*(10^-8)       //Resistivity of copper wire in ohm-metre.
D=(10^-3)      //Diameter of copper wire in metres.
rad=((D)/(2))      //Radius of copper wire in metres.
L=10     //Length of copper wire in metres.

//Outputs
A=(3.14)*(rad^2)      //Cross-sectional area of copper wire in metre-square
Rt=((roh*L)/(A))        //Total resistance of copper wire in ohm

//Results
mprintf("Cross-sectional area of copper wire: %.10f metre-square\n",A);
mprintf("Total wire resistance of copper wire is: %.5f ohm",Rt);

//Outputs
//Cross-sectional area of copper wire: 0.0000007850 metre-square (or) (7.8)*(10^-7) metre-square
//Total wire resistance of copper wire is: 0.21656 ohm
