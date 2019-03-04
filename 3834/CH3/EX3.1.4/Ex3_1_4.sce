//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 3.1.4
//windows 7
//Scilab version-6.0.0
clc;
clear all;
//given

//case 1
n1=1.48;//refractive index of the core
n2=1.46;//refractive index of the cladding

//case 2
n3=1.48;//refractive of the index of core
n4=1.402;//refractive index of the cladding

//case 1
b=n1*n1;
c=n2*n2;
v=b-c;
NA=sqrt(v);//numerical aperture for case 1
mprintf("\n numerical aperture for case 1=%.2f",NA);

//case 2
e=n3*n3;
r=n4*n4;
t=e-r;
NA1=sqrt(t);//numerical aperture for case 2
mprintf("\n numerical aperture for case 2=%.2f",NA1);
//

