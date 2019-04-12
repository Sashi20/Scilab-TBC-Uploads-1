clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.12
//calculation of wavelengths which will be in visible region (4000 Armstrong-8000 Armstrong)
//given data
t=5*10^-7; //thickness (in m) of film of soapy water
mu=1.33; //refractive index of soapy water
r=0; //angle (in degrees) at which white light falls on a film of soapy water
n1=1; //1st order
n2=2; //2nd order
n3=3; //3rd order
n4=4; //4th order
//calculation
lambda1=(2*mu*t*cosd(r))/(n1-1/2); //wavelength (in m) of light in 1st order
lambda2=(2*mu*t*cosd(r))/(n2-1/2); //wavelength (in m) of light in 2nd order
lambda3=(2*mu*t*cosd(r))/(n3-1/2); //wavelength (in m) of light in 3rd order
lambda4=(2*mu*t*cosd(r))/(n4-1/2); //wavelength (in m) of light in 4th order
printf("\nwavelength of light in 1st order is %d Armstrong",lambda1*10^10)
printf("\nwavelength of light in 2nd order is %d Armstrong",lambda2*10^10)
printf("\nwavelength of light in 3rd order is %d Armstrong",lambda3*10^10)
printf("\nwavelength of light in 4th order is %d Armstrong",lambda4*10^10)
printf("\namongst these, the wavelength which falls in the visible region (4000-8000)Armstrong is 5319 Armstrong")
//the second and third wavelength vary due to round off error
