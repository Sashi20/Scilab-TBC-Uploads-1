// Example 5.2.2  page 5.4

clc;
clear;

n1=1.47;        //refractive index of fiber
n=1;        //refractive index of air
d=40d-6;    //core diameter
y=4d-6;     //lateral dispalcement

a=d/2;      //computing core radius
eta_lateral = (16*(n1/n)^2)/(%pi*(1+(n1/n))^4)*(2*acos(y/(2*a))-(y/a)*(1-(y/(2*a))^2)^0.5);     //computing eta_lateral with air gap
loss=-10*log10(eta_lateral);        //computing loss when air gap is present
eta_lateral1=(2*acos(y/(2*a))-(y/a)*(1-(y/(2*a))^2)^0.5)/%pi;       //computing eta_lateral without air gap
loss1=-10*log10(eta_lateral1);      //computing loss when air gap is not present

printf("\nloss with air gap is %.2f dB.\nloss with no air gap is %.2f dB.\n Thus we can say that loss reduces considerably if there is no air gap.",loss,loss1);

//answer in the book for loss with air gap is 0.91dB, deviation of 0.01dB.
