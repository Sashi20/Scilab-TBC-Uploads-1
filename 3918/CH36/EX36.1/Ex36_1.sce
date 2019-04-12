//Example 36_1
clc;
clear;
close;

//Given data :
GS=5*1000000*(0.5-0.3)*365/100;// Municipal solid waste(MSW) generation per year in kN/yr
GS1=GS*10;// Municipal solid waste generation(MSW) for 10 years in kN
DS=8.5;// Estimated Density of MSW in kN/m^3
VS=GS1/DS;// Volume of MSW in m^3
TS=15;// Thickness of MSW landfill in m
AS=VS/TS;// Approximate Area required MSW landfill in m^2
disp(AS,"Approximate Area required MSW landfill in m^2");
// The answer provided in the textbook is wrong

GH=250000;// Municipal Hazardous waste(MHW) generation per year in kN
GH1=GH*10;// Municipal Hazardous waste(MHW) for 10 years in kN/yr
DH=12;// Estimated Density of MHW in kN/m^3
VH=GH1/DH;// Volume of MHW in m^3
TH=15;// Thickness of MHW landfill in m
AH=VH/TH;// Approximate Area required MHW landfill in m^2
disp(AH,"Approximate Area required MHW landfill in m^2");
// The answer provided in the textbook is wrong

tl=0.90;// Layer of thickness in liner in m
tc=0.60;// Layer of thickness in cover in m
VC=(tl+tc)*AS;// Approximate quantity of clay required for MSW landfill in m^3
disp(VC,"Approximate quantity of clay required for MSW landfill in m^3");
// The answer provided in the textbook is wrong
VG=(tl+tc)*AS;// Approximate quantity of geomembrane required for MSW landfill in m^3
disp(VG,"Approximate quantity of geomembrane required for MSW landfill in m^3");
// The answer provided in the textbook is wrong
