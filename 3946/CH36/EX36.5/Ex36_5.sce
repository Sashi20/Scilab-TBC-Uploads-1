//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
d = 2;         //(m)(Diameter of buoy)
dt = 1.2;      //(m)(Depth of buoy)
V = 0.4;       //(m^3)(Volume of curved portion)
OB1 = 1.3;     //(m)(Centre of buoyancy of the curved portion below the top of the cylinder)
OG = 0.8;      //(m)(Centre of gravity of the whole buoy below the top of the cylinder)
v = 2.6;       //(m^3)(Total volume of water displaced)

//Let h = Distance between the water surface and top of the buoy,
//B1 = Centre of buoyancy of the cylindrical buoy.

//Volume of water displaced by the cylindrical portion:
VV = v - V;    //(m^3)

//VV = (%pi/4)*(2^2) * (1.2 - h);
h = dt - VV * 4/(%pi * d^2);

//Distance of the centre of buoyancy of the cylindrical buoy from the top of the buoy:
OB2 = h + (dt - h)/2;     //(m)

//Let B = Centre of buoyancy for the whole buoy.

OB = [(V * OB1) + (VV * OB2)]/(V + VV);  //(m)

BG = OB - OG;     //(m)

//Moment of inertia of the cylindrical portion(top portion) about its centre of gravity:
I = (%pi/64)*(2^4);    //(m^4)
BM = I/v;              //(m)

//Metacentric height:
GM = (BM - BG)*1000;     //(mm)
printf("Metacentric height = %.2f mm",GM);
//The answers vary due to round off error
