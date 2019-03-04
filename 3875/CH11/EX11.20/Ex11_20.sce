clc;
clear;
tetha_A=21 //Braggs angle in degree
tetha_B_degree=21 // part of Braggs angle in degree
tetha_B_minute=23 //part of Braggs angle in minute
h=1 //x intercept of parallel plane
k=1 //y intercept of parallel plane
l=1 //z intercept of parallel plane
lambda=0.152 //wavelength of xray in nm

//calculation
//case(1) for sample A
d_111=lambda/(2*sind(tetha_A))
a=d_111*sqrt(h^2+k^2+l^2)
mprintf("\nThe lattice parameter of sample A is=  %1.3f nm\n",a)

//case(2) for sample B
tetha_B_decdeg=tetha_B_degree+(tetha_B_minute/60)
d_111=lambda/(2*sind(tetha_B_decdeg))
a=d_111*sqrt(h^2+k^2+l^2)
mprintf("The lattice parameter of sample B is = %1.3f nm\n",a)
