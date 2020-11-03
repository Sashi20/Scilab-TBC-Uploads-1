//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
NA = 975;   //(r.p.m.)(Speed of the gear wheel A)
TA = 20;    //(No. of teeth on wheel A)
TB = 50;    //(No. of teeth on wheel B)
TC = 25;    //(No. of teeth on wheel C)
TD = 75;    //(No. of teeth on wheel D)
TE = 26;    //(No. of teeth on wheel E)
TF = 65;    //(No. of teeth on wheel F)

//Let NF = Speed of the shaft F.

//NF/NA = (TA/TB) * (TC/TD) * (TE/TF);

NF = NA * (TA/TB) * (TC/TD) * (TE/TF);
printf("Speed of the shaft F = %.2f r.p.m.",NF);
