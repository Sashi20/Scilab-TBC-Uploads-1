//Book Name:Principles of Electronics , Vol.II
//Author:B.V.Narayana Rao
//Publisher:New Age International Private Limited
//Edition:Second Edition ,1996
//Operating system: Windows 10
//Scilab version: Scilab 6.0.0

//EX1_1.sce

clc;
clear;
Vcc=10;//dc supply voltage in V
Rc=2e3;//collector resiatance in ohm
//Vce=Vcc+(Ic*Rc)
//To find the coordinates of the load line first put Ic=0 in the following equation
Ic=0;
Vce=Vcc-(Ic*Rc);
printf("\n The coordinates of one end point B of the load line is (%1.0f V,0)",Vce)
//To find the coordinates of the load line then put Vce=0 in the following equation
Vce=0;
Ic=(Vcc-Vce)/Rc;
printf("\n The coordinates of other end point A of the load line is (0,%1.0f mA)",Ic*1e3)

vce=0:10;
for i=1:11
    ic(i)=(10-vce(i))/2;
end
plot(vce,ic)
xlabel("Vce in volt")
ylabel("Ic in mA")
title("DC load line")


