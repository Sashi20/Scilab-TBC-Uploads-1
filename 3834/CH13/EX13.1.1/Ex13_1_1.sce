//Fibre Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 13.1.1
clc;
clear all;
//given

lambda1=1300E-9;//Wavelength of lambda 1 in m
lambda2=1550E-9;//Wavelength of lambda 2 in m
DELTA=0.0031;//given for SM fiber
delta=2*DELTA;//relative refractive index
a=4E-6;//assumed fiber core radius in m
u=12E-6;//distance between 2 fiber axes in m
w=u/a;

k1=411.06;//
k2=852.47;//

//since the arguement of raised sine and cosine series reaches Pi/4=0.785 hence k*L=785 gives:
Lc1=785/k1;
mprintf("For 1300nm, Coupling length= %.2f mm",Lc1);
Lc2=785/k2;
mprintf("\nFor 1550nm, Coupling length= %.2f mm",Lc2);
