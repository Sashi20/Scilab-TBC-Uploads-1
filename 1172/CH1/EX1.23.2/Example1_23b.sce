clc
// Given That
lambda1=5.89e-5// wavelength in cm
lambda2=5.896e-5//wavelength in cm
n=2// for second order spectrum
t = 2 // width of diffraction grating 
grating_element = 425 // no. of lines per cm
//Sample Problem 23b Page No. 56

printf("\n # Problem 23b # \n")
printf(" \n Standard formula used \n   lambda / d_lambda = n*N \n")
total_line = t * grating_element
printf("\n Total number of lines on diffraction grating %d \n \n So",total_line)
N=lambda1/ (lambda2-lambda1)/n
if (N > total_line) then
printf ("\n  ,Lines will not be resolved in %d order.",n)
printf("\nas %d  lines are required  for diffraction are  ", N)
else printf ("  Lines will be resolved in %d order", n)
    printf("\nas %d  lines are required  for diffraction are . ", N)
end

