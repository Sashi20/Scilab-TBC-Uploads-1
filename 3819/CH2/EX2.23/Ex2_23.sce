// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.23
clc
clear
//Given Data Set in the Problem
dens=1000
g=9.81
sg=13.6
dens_air=1.2

//calculations
p0=760/1000*sg*dens*g
p=735/1000*sg*dens*g
//the height "h" at which the pressure equals p is given by 
h=(p0-p)/(dens_air*g)
mprintf("The height is %.2f m at which the pressure equals %.2f  mm Hg\n",h,735 )
