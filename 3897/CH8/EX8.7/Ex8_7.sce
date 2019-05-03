clc; clear;
// Example 8.7
// Page 239
// Given data
H=11; // cover, ft
B=2; // trench width, ft
SF=1.5; // safety factor
//estimation
H_B=H/B; // ratio pf cover to width
C=3.2; // coefficient, from figure 8.19
w=130; // unit weight of backfill, lb/ft^3, from table 8.2
W=C*w*B^2; // dead load due to backfill, lb/ft, from Marston's formula
CS1=1400; // crushing strength for standard-strength 8-inch VCP, lb/ft
LF1=(SF*W)/CS1; // load factor, for standard strength VCP
CS2=2200; // crushing strength for extra-strength VCP, lb/ft
LF2=(SF*W)/CS2; // load factor, for extra strength VCP
printf('The load factor for standard strength VCP= %f',LF1)
disp(' according to load factor, the class B bedding will be adequate.')

printf('The load factor for extra strength VCP= %f',LF2)
disp(' according to load factor, the class C bedding will be adequate.')
clear




