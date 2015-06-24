clear all; clc;
//This numerical is Ex 3_2E,page 44.

V_r1=7.47
U_1=20.9
V_r2=3.27
U_2=62.7

//let x=tanbeta1
x=V_r1/U_1
printf("\n The value of ß_f1 is equal to %0.3f degrees",x)
beta_f1=(atan(x))*180/%pi
printf("\n Thus the value of ß_f1 is %0.2f degrees",beta_f1)

V_1=V_r1
W_1=(U_1^2+V_r1^2)^0.5
printf("\n Thus the value of W_1 is %0.2f ft/s",W_1)

beta_f2=beta_f1-10
printf("\n Hence the value of beta_f2 is equal to %0.2f degrees",beta_f2)

//rounding of value of betaf2 to be equal to 9.6
beta_f2=9.6
W_u2=V_r2/tan(beta_f2*%pi/180)
printf("\n Hence the value of W_u2 is %0.1f ft/s",W_u2)

V_u2=U_2-W_u2
printf("\n Hence the value of V_u2 is equal to %0.1f ft/s",V_u2)


//rounding off Wu2
W_u2=19.3
W_2=(W_u2^2+V_r2^2)^0.5
printf("\n The value of W_u2 is equal to %0.3f ft/s",W_2)

//rounding off Vu2
V_u2=43.4
V_2=(V_u2^2+V_r2^2)^0.5
printf("\n Thus he value of V_2 is equal to %0.2f ft/s",V_2)
