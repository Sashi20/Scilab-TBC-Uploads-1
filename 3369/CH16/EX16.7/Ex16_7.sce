//Chapter 16,Example 6,page 561
//Determine the wave generated
clear
clc
C1 = 0.125*10^-6 // F
C2 = 1*10^-9 // F
R1 = 360 // ohm
R2 = 544 // ohm
V0 = 100 // kV
theta = sqrt(C1*C2*R1*R2)
neta = 1/(1+R1/R2+C2/C1)
alpha = R2*C1/(2*theta*neta)
printf("\n Theta = %f micro S",theta*10^6)
printf("\n Neta = %f",neta)
printf("\n Alpha = %f ",alpha)
// Coresponding to alpha the following can be deduced from Fig 16.12
T2 = 16.25*theta*10^6
T1 = T2/120
// From equations 16.41 and 16.42
a1 = (alpha-sqrt(alpha^2-1))*10^-6/(theta) 
a2 = (alpha+sqrt(alpha^2-1))*10^-6/theta 
printf("\n T1 = %f microS", T1) // Answer given in the text is wrong
printf("\n T2 = %f microS", T2) 
printf("\n alpha1 = %f microS", a1)
printf("\n alpha2 = %f microS", a2)
// According to equation 16.40
et = neta*(alpha*V0)/sqrt(alpha^2-1)
printf("\n e(t) = %f * (e^%ft - f^%ft)",et,-a1,-a2) // Equation of the wave form generated by the impulese

//Answers may vary due to round off error 
