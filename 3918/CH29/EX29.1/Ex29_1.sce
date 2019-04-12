//Example 29_1
clc;
clear;
close;

//Given data :
d=3.5;// Depth of soil in m 
l=1;// Length of soil in m
w=1;// Breath of soil in m
V=d*l*w;// Volume in m^3
C1=30;// Cost for excavation per m^3 in Rs.
C2=45;// Cost for relaying soil per m^3 with compaction in Rs.
C=V*(C1+C2);// Cost of excavation and relaying of soil per m^2 in Rs.
disp(C,"Cost of excavation and relaying of soil per m^2 in Rs.");
Cc=350;// Cost of compaction per m^2 in Rs.
disp(Cc,"Cost of compaction per m^2 in Rs.");
if(C<Cc) then
    disp("Excavation and relaying method is econimical");
else
    disp("Impact compaction method is economical");
end
