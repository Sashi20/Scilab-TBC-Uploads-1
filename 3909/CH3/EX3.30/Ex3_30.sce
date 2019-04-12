clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.30
//calculation of (a)angle at which first order maximum occurs for wavelength 5890 Armstrong (b)angular separation of these lines in first order (c)maximum wavelength separation resolvable by grating in its first order (d)minimum number of lines on the grating needed to resolve doublet in first order
function[mint, secnd]=degmin(theta)
    mint=(theta-floor(theta))*60;
    secnd=(mint-floor(mint))*60;
    endfunction
//given data
n=1; //order of maximum
lambda1=5890*10^-10; //wavelength (in m) of one line of light
lambda2=5895.59*10^-10; //wavelength (in m) of another line of light
W=2.50*10^-2; //width of grating (in m)
N=1.20*10^4; //number of rulings
n=1; //order of maximum
//calculation
a_plus_b=W/N; //slit spacing for grating (in m)
theta=asind((n*lambda1)/a_plus_b); //angle (in degrees) at which first order maximum occurs for wavelength 5890 Armstrong
dlambda=lambda2-lambda1; //difference between wavelengths (in m)
dtheta=dlambda*n/(a_plus_b*cosd(theta)); //angular separation of these lines in first order
[mint, secnd]=degmin(dtheta); //call deg_2_degmin function
RP=N*n; //maximum wavelength separation resolvable by grating in its first order 
N=(lambda2/dlambda)/n; //minimum number of lines on the grating needed to resolve doublet in first order
printf("\n(a)angle at which first order maximum occurs for wavelength 5890 Armstrong is %0.1f degrees",theta)
printf("\n(b)angular separation of these lines in first order is %0.4f minutes %0.2f seconds",mint,secnd)
printf("\n(c)maximum wavelength separation resolvable by grating in its first order is %d",RP)
printf("\n(d)minimum number of lines on the grating needed to resolve doublet in first order is %d",N)
//the answers vary due to round off error
//the value of lambda2 is taken different in the question and the calculation
