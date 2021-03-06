//Chapter-3, Example 3.15, Page 72
//=============================================================================
clc
clear

//INPUT DATA
Di=0.1;//I.D of the pipe in m
Do=0.11;//O.D of the pipe in m
L=0.005;//Thickness of the wall in m
k1=50;//Thermal conductivity of steel pipe line in W/m.K
k3=0.06;//Thermal conductivity of first insulating material in W/m.K
k2=0.12;//Thermal conductivity of second insulating material in W/m.K
T=[250,50];//Temperature at inside tube surface and outside surface of insulation in degree C
r3=0.105;//Radius of r3 in m as shown in fig.3.14 on page no.71
r4=0.155;//Radius of r4 in m as shown in fig.3.14 on page no.71

//CALCULATIONS
r1=(Di/2);//Radius of the pipe in m
r2=(Do/2);//Radius of the pipe in m
q=((2*3.14*(T(1)-T(2)))/(((log(r2/r1))/k1)+((log(r3/r2))/k2)+((log(r4/r3))/k3)));//Loss of heat per metre length of pipe in W/m

//OUTPUT
mprintf('Loss of heat per metre length of pipe is %3.2f W/m',q)
//Comparing the result with the previous example  Ex.3.14, it is seen that the loss of heat is increased by about 18.11%. Since the purpose of insulation is to reduce the loss of heat, it is always better to provide the insulating material with low thermal conductivity on the surface of the tube first 

//=================================END OF PROGRAM==============================
