//Example 10_13
clc;
clear;
close;

//Given data :
i=30;// Interval in m
j=40;// slope 1 in 40
x=30/40;// change in reduced level at each chainage in m
g1=181.5;// Ground level at 0 chainage in m
r1=179;// Reduced level at 0 chainage in m
g2=181.8;// Ground level at 0 chainage in m
r2=r1-x;// Reduced level at 0 chainage in m
g3=182.4;// Ground level at 0 chainage in m
r3=r2-x;// Reduced level at 0 chainage in m
h1=g1-r1;// Depth of the cutting at 0 chainage in m
h2=g2-r2;// Depth of the cutting at 0 chainage in m
h3=g3-r3;// Depth of the cutting at 0 chainage in m
b=9;// Formation width in m
s=2;// side slope
r=6;// Transverse slope
// Area=(s*((b/2)^2) + r^2*((b*h)+(s*h^2)))/((r^2)-(s^2))
a=r^2*s/((r^2)-(s^2));
b1=(h1+(b/(2*s)))^2;
b2=(h2+(b/(2*s)))^2;
b3=(h3+(b/(2*s)))^2;
c=b^2/(4*s);
A1=(a*b1)-c;// Area at chainage 0 in sq. m
A2=(a*b2)-c;// Area at chainage 0 in sq. m
A3=(a*b3)-c;// Area at chainage 0 in sq. m

// Volume by trapezoidal formula
V=(i/2)*((A1+A3)+(2*(A2)));// Volume by trapezoidal formula in cubic m
disp(V,"Volume by trapezoidal formula in cubic m");

// Volume by prismoidal formula
V=(i/3)*(A1+A3+(4*A2));// Volume by prismoidal formula in cubic m
disp(V,"Volume by prismoidal formula in cubic m");

PC=(i*s/3)*((r^2)/((r^2)-(s^2)))*((h2-h1)^2+(h3-h2)^2);// Prismoidal Correction in cubic m
disp(PC,"Prismoidal Correction in cubic m");
