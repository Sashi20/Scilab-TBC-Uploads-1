//Example 38_1
clc;
clear;
close;

//Given data :
Ca=200;// Cost of ammended soil barrier(horizontal) in Rs per m^3
Cg=250;// Cost of geomembrane in Rs per m^2
Cb=350;// Cost of soil-Bentonite barrier(vertical) in Rs per m^3
Ta=1;// Thickness of compacted ammended soil in m
Tg=1.5/1000;// Thickness of geomembrane in m
Tb=1.2;// Thickness of soil-Bentonite in m

// Alternative A
disp("Alternative A");
L=200;// Length if landfill in m
B=150;// Breath of landfill in m
Aa=L*B;// Area of landfill in m^2
Va=Aa*Ta;// Volume of ammended soil barrier layer in m^3
CA=Va*Ca;// Cost of ammended soil barrier layer in Rs
Ag=L*B;// Area of geomembrane in m^2
CG=Ag*Cg;// Cost of geomembrane in Rs
TC=CA+CG;// Total cost of liner in Rs
disp(TC,"   Total cost of liner in Rs");

// Alternative B
disp("Alternative B");
L=220;// Length of trench wall in m
B=190;// Wdith of trench wall in m
P=2*(L+B);// Perimeter of in m
d=12;// Depth in m
V=P*Tb*d;// Volume of cut-off wall in m^3
C=V*Cb;// Cost of cut-off wall in Rs
disp(C,"    Cost of cut-off wall in Rs");
if(TC<C) then
    disp("Cost of liner is less than cost of cut-off. Hence cost of liner is chosen");
else
    disp("Cost of cut-off is less than cost of liner. Hence cost of cut-off is chosen");
end
