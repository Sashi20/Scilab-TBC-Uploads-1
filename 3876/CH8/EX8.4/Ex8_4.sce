
//Chapter 8 Chemical Equlibrium

clc;
clear;

//Initialisation of Variables
pno2= 0.31 //atm
pn2o2= 0.69 //atm
p= 10 //atm

//CALCULATIONS
Kp= pno2**2/pn2o2
x= (-Kp+sqrt(Kp**2+4*4*p*Kp))/(2*4)
p1= p-x
p2= 2*x

//RESULTS
mprintf("Kp= %.2f",Kp)
mprintf("\nx= %.2f atm",x)
mprintf("\nN2O4= %.2f atm",p1)
mprintf("\nNO2= %.3f atm",p2)
mprintf("\nif reaction is presented by another equation")
Kp= pno2/sqrt(pn2o2)
mprintf("\nKp= %.2f",Kp)
x= (-(Kp**2)+sqrt(Kp**4+4*4*p*Kp**2))/(2*4)
mprintf("\nx= %.2f atm",x)
