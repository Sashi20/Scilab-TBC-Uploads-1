clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.31
//calculation of difference of squares of diameters of successive rings if (a) wavelength of light is changed to 4.5*10^-5 cm (b)liquid of refractive index 1.33 is introduced between the lens and the plate (c) the plane glass plate is replaced by a planocomcave lens of radius of curvature twice that of the planoconvex lens (d) the plane glass plate is replaced by planoconvex lens identical to one and put on the top of it
//given data
lambda1=6*10^-5; //wavelength (in cm) of light
lambda2=4.5*10^-5; //new wavelength (in cm) of light
D1sq_minus_D2sq=0.125; //difference of squares of diameters (in cm^2)
mu_liq=1.33; //refractive index of liquid
mu=1; //refractive index of air
m=1; //difference between the number of rings
//calculation
//in the codes, Dn+m is considered as D1 and Dn as D2
lambda4R=(D1sq_minus_D2sq*mu)/m; //assuming lambda4R as one variable for simplicity of calculation
D1sq_dash_minus_D2sq_dash_lambda2=D1sq_minus_D2sq*lambda2/lambda1; //difference of squares of diameters of successive rings if wavelength of light is changed  (in cm^2)
D1sq_minus_D2sq_liquid=D1sq_minus_D2sq/mu_liq; //difference of squares of diameters of successive rings if liquid of refractive index is introduced (in cm^2)
D1sq_dash_minus_D2sq_dash_R=2*lambda4R; //difference of squares of diameters of successive rings if radius of curvature becomes twice (in cm^2)
D1sq_dash_minus_D2sq_dash_t=1/2*(lambda4R); //difference of squares of diameters of successive rings when thickness is changed (in cm^2)
printf("\n(a)difference of squares of diameters of successive rings if wavelength of light is changed  is %0.3f cm^2",D1sq_dash_minus_D2sq_dash_lambda2)
printf("\n(b)difference of squares of diameters of successive rings if liquid of refractive index is introduced is %0.3f cm^2",D1sq_minus_D2sq_liquid)
printf("\n(c)difference of squares of diameters of successive rings if radius of curvature becomes twice is %0.3f cm^2",D1sq_dash_minus_D2sq_dash_R)
printf("\n(d)difference of squares of diameters of successive rings when thickness is changed is %0.4f cm^2",D1sq_dash_minus_D2sq_dash_t)
