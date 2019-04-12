//Example 16_4
clc;
clear;
close;

//Given data :
r1=1.35;// Reading at benchmark from station I1 in m
r2=2.15;// Reading at benchmark from station I2 in m
S=r2-r1;// Difference in height of instrument axis in m
alpha1=19+(30/60);// Vertical angle from I1 in degree
alpha2=8+(15/60);// Vertical angle from I2 in degree
// If D is the distance between instrument station 1 and the object, then D*tan(alpha1) = H + S
// H - Height from station 2
// S - Difference between the staff intercepts
// Instrument station 2 is at D+200 m from object
// (D+200)*tan(alpha2) = H
// Equating both the H values gives (D+200)*tan(alpha2) = D*tan(alpha1)-S
// Rearranging the equation as D=((200*tan(alpha2))+S)/(tan(alpha1)-tan(alpha2))
D=((200*tand(alpha2))+S)/(tand(alpha1)-tand(alpha2));// Horizontal distance in m
disp(D,"Horizontal distance in m");
H=(D+200)*tand(alpha2);// Height in m
RLb=1020.375;// RL of benchmark in m
RL=RLb+r2+H;// RL of the top of the chimney in m
disp(RL,"RL of the top of the chimney in m")
// The answers vary due to round off error
