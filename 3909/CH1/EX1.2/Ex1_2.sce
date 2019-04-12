clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.2
//calculation of wavelength of light used in Fresnel's biprism experiment
//given data
W=0.196; //fringe width (in mm)
D=1.00*10^3; //distance from the slit(in mm)
//in the codes below, Dn+m is considered as D_n1
d1=6.00; //separation between images when convex lens was placed at one place between biprism and eye piece (in mm)
d2=1.5; //separation between images when convex lens was placed at another place between biprism and eye piece (in mm)
//calculation
d=sqrt(d1*d2); //actual separation (in mm)
format (16)
lambda=(W*d)/D; //wavelength (in mm) of light
disp(lambda*10^7,'wavelength (in Armstrong) of light is')
