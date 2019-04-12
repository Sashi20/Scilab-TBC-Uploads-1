clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.19
//calculation of least thickness of the plate for which the emergent beam will be (i)plane polarized (ii)circularly polarized
//given data
mu_e=1.5533; //refractive index of extraordinary light
mu_o=1.5442; //refractive index of ordinary light
lambda=5000*10^-10; //wavelength (in m) of light
n=1; //taking 1st order
//calculation
t=((n+1/2)*lambda)/(mu_e-mu_o); //thickness (in m) of the plate for which the emergent beam will be plane polarized
t_QWP=lambda/(4*(mu_e-mu_o)); //thickness (in m) of the plate for which the emergent beam will be circularly polarized
printf("\n(i)thickness of the plate for which the emergent beam will be plane polarized is %2.1f micrometer or its odd multiple",t*10^6)
printf("\n(ii)thickness of the plate for which the emergent beam will be circularly polarized is %2.2f micrometer or its odd multiple",t_QWP*10^6)
//the first part of the answer is given wrong in the textbook
//the second part of the answer varies due to round off error
