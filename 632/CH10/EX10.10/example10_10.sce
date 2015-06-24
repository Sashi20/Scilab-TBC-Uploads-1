//clc()
mlime = 5;//kg
mcoke = 1;//kg
PCaCO3l = 84.5;//%
PMgCO3l = 11.5;//%
NCaCO3l = PCaCO3l * mlime / (100.09*100);
NMgCO3l = PMgCO3l * mlime / (84.312*100);
mInertsl = mlime * ( 100 - PCaCO3l - PMgCO3l ) / 100;
PCc = 76;//%
Pashc = 21;//%
Pwaterc = 3;//%
NCc = mcoke *  PCc /(100*12);
Nwaterc = mcoke * Pwaterc / ( 100 * 18.016 );
mash = Pashc * mcoke / 100;
//CaCO3 + C + O2 = CaO + 2CO2
//MgCO3 + C + O2 = MgO + 2CO2
PCaCO3conv = 95;//(Percent calcination of CaCO3)
PMgCO3conv = 90;//(Percent calcination of MgCO3)
NCaO = PCaCO3conv * NCaCO3l / 100;
mCaO = NCaO * 56.08;
NMgO = PMgCO3conv * NMgCO3l / 100;
mMgO = NMgO * 40.312;
mCaCO3 = (NCaCO3l * (1-PCaCO3conv/100)*100.09);
mMgCO3 = (NMgCO3l * (1-PMgCO3conv/100)*84.312);
mtotal = mCaO + mMgO + mCaCO3 + mMgCO3 + mInertsl + mash;
PCaO = mCaO * 100 / mtotal;
disp("%",PCaO,"The weight percent of CaO in the product leaving the kiln = ")