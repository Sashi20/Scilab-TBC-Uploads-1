clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.6
//calculation of shift of fringe system
//given data
lambda=5893; //wavelength of sodium light
W=0.347; //fringe width (in mm)
tA=0.016; //thickness of sheet A (in mm)
tB=0.02; //thickness of sheet B (in mm)
muA=1.65; //refractive index of sheet A
muB=1.45; //refractive index of sheet B
//calculation
xA=(muA-1)*tA; //path difference introduced by film A (in mm)
xB=(muB-1)*tB; //path difference introduced by film B (in mm)
n=(xA-xB)/(lambda*10^-7); //number of fringe
s=n*W; //shift in fringe system (in mm)
printf("\nshift in fringe system is %0.3f mm",s)
if xA>xB then
    disp("pattern will shift towards A")
else
    disp("pattern will shift towards B")
end
