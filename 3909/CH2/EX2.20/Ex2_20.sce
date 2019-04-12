clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.20
//calculation of minimum thickness of plate required to produce (i)zero outgoing intensity (ii)intensity of incident light
//given data
mu_0=1.658; //refractive index of ordinary light
mu_e=1.486; //refractive index of extra ordinary light
lambda=5893*10^-10; //wavelength (in m) of sodium light
//calculation
l=lambda/(mu_0-mu_e); //minimum thickness (in m) of plate required to produce zero outgoing intensity 
l_dash=lambda/(4*(mu_0-mu_e)); //minimum thickness (in m) of plate required to produce intensity of incident light
printf("\n(i)minimum thickness of plate required to produce zero outgoing intensity is %1.2f micrometre",l*10^6)
printf("\n(i)minimum thickness of plate required to produce intensity of incident light is %1.3f micrometre",l_dash*10^6)
//the answers vary due to round off error
