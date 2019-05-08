//Example 10.11, Page Number 596
//Column Decoders
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
//Consider a 1024:1 decoder
K=10              //Number of inputs of decoder
K_precoded=5               //Number of precoded bits
N_tree=2*((2^K_precoded)-1)            //Number of devices required in tree decoder
N_pass=(2^K)                   //Number of devices in pass deocoder
N_pre=6*(2^K_precoded)          //Number of devices for 5 bit precoding

//Outputs
N_dec=N_pre+N_pass+N_tree          //Number of devices in column decoder

//Results
mprintf("\nNumber of devices in column decoder N_dec: %.1f",N_dec);



//Outputs
//Number of devices in column decoder N_dec: 1278.0
