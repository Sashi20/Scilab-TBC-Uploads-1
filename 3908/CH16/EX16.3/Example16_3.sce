//Example 16_3
clc;
clear;
close;

//Given data :
// Let the distance of the instrument station I1 from P be D
// The distance of I2 form P = D+150
alpha1=30+(30/60);// Vertical angle from I1 in degree
alpha2=18+(30/60);// Vertical angle from I2 in degree
// h1=D*tan(alpha1), h2=(D+150)*tan(alpha2)
// The two heights are equal, therefore h1= h2
// Rearranging the equation as D=150*tan(alpha2)/(tan(alpha1)-tan(alpha2))
D=150*tand(alpha2)/(tand(alpha1)-tand(alpha2));// Horizontal distance P in m
disp(D,"Horizontal distance P in m");
h=D*tand(alpha1);// Elevation of P in m
// Corrections for curvature and refraction need not to be applied, as the distance is small
RLi=1355.765;// RL of instrument axis in m
RLp=RLi+h-4;// RL of station P in m
disp(RLp,"RL of station P in m");
// The answers vary due to round off error
