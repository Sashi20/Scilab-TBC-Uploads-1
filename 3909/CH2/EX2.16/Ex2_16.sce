clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.16
//calculation of thickness of a calcite plate which would convert plane polarized light into circularly polarized light
//given data
mu_o=1.658; //refractive index of o-ray
mu_e=1.486; //refractive index of e-ray
lambda=5890*10^-10; //wavelength (in m) of light
//calculation
l_QWP=lambda/(4*(mu_o-mu_e)); //thickness (in m) of quarter wave plate
printf("\nthickness of a calcite plate which would convert plane polarized light into circularly polarized light is %1.3f micrometer or its odd multiple",l_QWP*10^6)
