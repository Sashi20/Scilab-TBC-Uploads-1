//Example 8_7
clc;
clear;
close;

//Given data :
L1=5;// Length of each section of first part in m
L2=10;// Length of each section of second part in m
l1=2.5;// Length of offset in m
l2=3.8;// Length of offset in m
l3=8.4;// Length of offset in m
l4=7.6;// Length of offset in m
l5=10.5;// Length of offset in m
l6=9.3;// Length of offset in m
l7=5.8;// Length of offset in m
l8=7.8;// Length of offset in m
l9=6.9;// Length of offset in m
l10=8.4;// Length of offset in m

// (a) Trapezoidal rule
A1=L1*(((l1+l6)/2)+l2+l3+l4+l5);// Area of first part in sq. m
A2=L2*(((l6+l10)/2)+l7+l8+l9);// Area of second part in sq. m
A=A1+A2;// Total area in sq. m
disp(A,"(a) Total area in sq. m");

// (b) Simpson's rule
A12=L1*(l1+l2)/2;// Area between first and second ordinates in sq. m
A26=(L1/3)*(l2+l6+(4*(l3+l5)+(2*l4)));// Area between second and six ordinates in sq. m
A610=(L2/3)*(l6+l10+(4*(l7+l9)+(2*l8)));// Area between second and six ordinates in sq. m
A=A12+A26+A610;// Total area in sq. m
disp(A,"(b) Total area in sq. m");

// (c) Coordinates method
x1=5,y0=l1;
x2=10,y1=l2;
x3=15,y2=l3;
x4=20,y3=l4;
x5=25,y4=l5;
x6=35,y5=l6;
x7=45,y6=l7;
x8=55,y7=l8;
x9=65,y8=l9;
x10=65,y9=l10;
X=(y0*x1)+(y1*x2)+(y2*x3)+(y3*x4)+(y4*x5)+(y5*x6)+(y6*x7)+(y7*x8)+(y8*x9)+(y9*x10);
Y=(x1*y9)+(x2*y3)+(x3*y4)+(x4*y5)+(x5*y6)+(x6*y7)+(x7*y8)+(x8*y9);
A=(1/2)*(X-Y);// Area in sq. m
disp(A,"(c) Area in sq. m");
