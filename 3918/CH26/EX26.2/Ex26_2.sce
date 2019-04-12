//Example 26_2
clc;
clear;
close;

//Given data :
BC=1.5;// Bucket capacity in m^3
tc=30;// Cycle time in seconds
sf=20/100;// Swell factor of soil
V=9;// Volume of Dumper in m^3
t=120;// Time delay in seconds
Q=0.8*BC/(1+sf)*(3600/tc);// Volume stripped per cycle in m^3
N=V/BC;// Number of cycles to load a dumper
at=t/N;// Average delay per cycle in seconds
tc=tc+at;// Cycle time including delay in seconds
O=0.8*BC/(1+sf)*3600/tc;// Output with spotting delay in m^3/hr
PO=((Q-O)/Q)*100;// Percentage decrease in output in percent
disp(PO,"Percentage decrease in output in percent");
