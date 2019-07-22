//Example 2.2, Page Number 18
//Resistance Color Codes
clc;

//Inputs
//Colour bands:a = green, b =  brown, c = red, and tol = gold
//a=5            Green colour code
//b=1              Brown colour code
c=2             //Red colour code
ab=51
tol=(0.05*((ab)*(10^c)))            //Tolerence band for given colour codes.

//Outputs
R_max=((ab)*(10^c))+tol      //Maximum resistance of given colour codes in ohms
R_min=((ab)*(10^c))-tol      //Minimum resistance of given colour codes in ohms

//Results
mprintf("Maximum resistance: %.5f ohms\n",R_max);
mprintf("Minimum resistance: %.5f ohms",R_min);

//Outputs
//Maximum resistance: 5355.00000 ohms
//Minimum resistance: 4845.00000 ohms

//Final answers in the solution of the book are rounded off.
