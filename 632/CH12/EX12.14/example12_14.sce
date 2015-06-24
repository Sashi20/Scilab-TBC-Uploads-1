//clc()
Nco = 1;//mol CO reacted
//CO + 1/2 O2 = CO2
No2 = Nco / 2;
Pexcess = 100;
Nosupp = No2 * ( 1 + Pexcess / 100 );//oxygen supplied
Nn2 = Nosupp * 79 / 21;
Nco2 = Nco;
Noremain = Nosupp - No2;
T1 = 298;//K
T2 = 400;//K
Hr1 = -282.99;//kJ
T3 = 600;//K
SHco = 29.1;//J/molK
SHo2 = 29.7;//J/molK
SHn2 = 29.10;//J/molK
SHco2 = 41.45;//J/molK
H1 = (Nosupp * SHo2 + Nn2 * SHn2 + Nco * SHco) * (T1 - T2);//enthalpy of cooling of reactants from 298 to 400 K
H2 = (Nco2 * SHco2 + Nn2 * SHn2 + Noremain * SHo2) * (T3 - T1);//enthalpy of heating the products from 298K to 600K
H = H1/1000 + Hr1 + H2/1000;
disp("kJ",H,"Heat change at 600K = ")