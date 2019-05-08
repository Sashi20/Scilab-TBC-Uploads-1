//Example 10.12, Page Number 599
//Differential Sense Amplifier
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
W_L_NMOS=10              //(W/L) ratio of NMOS transitor
W_L_PMOS=10              //(W/L) ratio of PMOS transitor
I_bias=100*(10^-6)         //biasing current in amperes(A)
lamda_NMOS=0.06                //Channel modulation in volt inverse(1/V)
lamda_PMOS=0.19                //Channel modulation in volt inverse(1/V)
Kn=19.6*(10^-6)            //NMOS device parameter in ampere per volt square(A/V^2)

//Outputs
A=(1/(lamda_NMOS+lamda_PMOS))*sqrt((4*Kn*W_L_NMOS)/I_bias)    //Gain of differential sense amplifier

//Results
mprintf("\nGain of differential sense amplifier A: %.2f",A);

//Output
//Gain of differential sense amplifier A: 11.20


