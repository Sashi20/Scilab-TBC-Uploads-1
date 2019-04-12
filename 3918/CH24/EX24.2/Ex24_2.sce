//Example 24_2
clc;
clear;
close;

//Given data :
D15p=0.001;// D15 protected soil in mm
D85p=0.006;// D85 protected soil in mm

// Soil A:
D15f=0.0025;// D15 filter for soil A in mm
a1=D15f/D15p;
b1=D15f/D85p;

// Soil B:
D15f=0.006;// D15 filter for soil A in mm
a2=D15f/D15p;
b2=D15f/D85p;

// Soil C:
D15f=0.036;// D15 filter for soil A in mm
a3=D15f/D15p;
b3=D15f/D85p;

if((a1>=5)&&(b1<=5)) then
    disp("Soil A meets all the three criteria and can therefore be used for transition filter");
    elseif((a2>=5)&&(b2<=5)) then
    disp("Soil B meets all the three criteria and can therefore be used for transition filter");
    else((a1>=5)&&(b1<=5))
    disp("Soil C meets all the three criteria and can therefore be used for transition filter");
end

