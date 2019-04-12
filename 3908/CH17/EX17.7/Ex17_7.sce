//Example 17_7
clc;
clear;
close;

//Given data :
E1=418.85;// Elevation of A in m
E2=702.63;// Elevation of B in m
D=90;// Distance between Stations A and B in km
D1=3.8533*sqrt(E1);// Distance to visible horizon from A in km
ip=66;// Intervening peak from A in km
ce=D1-ip;// Distance ce in km
cc1=0.06735*(ce^2);// Height from c to line of sight cc' in m
eb=D-D1;// Distance eb in km
bb1=0.06735*(eb^2);// Distance in bb' in m
Bb1=E2-bb1;// Distance Bb' in m
c1c2=Bb1*ip/D;// in m
H=c1c2+cc1;// Height of line of sight at C in m
Ld=524.6-H;// Line of sight fails to clear peak by Ld in m
h=Ld+3;// Height of line of sight at C in m
HB=h*D/ip;// Height of the signal at B in m
disp(HB,"Height of the signal at B in m");
// The answers vary due to round off error
