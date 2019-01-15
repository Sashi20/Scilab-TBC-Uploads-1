// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.1
clc
clear
W=7
V=1/1000
g=9.81
d_water=1000
w=W/V
mprintf("The Specific weight of the liquid is %d \n",w)
d=w/g
mprintf("The density of the liquid is %.2.f \n",d)
SG=d/d_water
mprintf("The Specific Gravity o fthe liquid is %d \n",SG)
