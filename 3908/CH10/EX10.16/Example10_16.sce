//Example 10_16
clc;
clear;
close;

//Given data :
c1=260;// Contour 1
c2=258;// Contour 2
i=c1-c2;// Interval between contour
// scale 1 in 4000 => 1 cm = 40 m
x=40^2;// This factor x is multiplied with areas measured by planimeter to get area in sq. m
A1=400*x;// Area of contour 260 in m
A2=367.5*x;// Area of contour 258 in m
A3=327.5*x;// Area of contour 256 in m
A4=310*x;// Area of contour 254 in m
A5=277.5*x;// Area of contour 252 in m
A6=243.75*x;// Area of contour 250 in m
A7=205*x;// Area of contour 248 in m
A8=177.5*x;// Area of contour 246 in m
A9=147.5*x;// Area of contour 244 in m
A10=115*x;// Area of contour 242 in m
A11=0*x;// Area of contour 240 in m
// Volume by trapezoidal formula
V=(i/2)*(A1+A11+(2*(A2+A3+A4+A5+A6+A7+A8+A9+A10)));// Volume by trapezoidal formula in cubic m
disp(V,"Volume by trapezoidal formula in cubic m");

// Volume by prismoidal formula
V=(i/3)*(A1+A11+(4*(A2+A4+A6+A8+A10))+(2*(A3+A5+A7+A9)));// Volume by prismoidal formula in cubic m
disp(V,"Volume by prismoidal formula in cubic m");
