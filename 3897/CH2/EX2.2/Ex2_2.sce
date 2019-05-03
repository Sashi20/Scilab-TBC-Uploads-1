clc; clear;
// Example 2.2
// Page 30
// Given data
ha=100-95; //height of water above point A in m
hb=100-70; //height of water above point B in m
hc=hb;  //The pressure at the pint C is equal to the pressure at B
hd=100-55; // height of water above point D in m
// estimation
Pa=9.8*ha; // kPa, using equation 2-2a
Pb=9.8*hb; // kPa
Pc=9.8*hc; // kPa
Pd=9.8*hd; // kPa
printf('The hydrostatic pressure at the point A = %f kPa\n',Pa)
printf('The hydrostatic pressure at the point B = %f kPa\n', Pb)
printf('The hydrostatic pressure at the point C = %f kPa\n', Pc)
printf('The hydrostatic pressure at the point D = %f kPa\n', Pd)
disp('The hydrostatic pressure at the point E can not be calculated.')
clear
