//lubricants//
//page 3.31 example 8//
clc
vol_oil=6//in ml//
den_oil=0.91//density of oil in g/ml//
wt_oil=vol_oil*den_oil//weight f oil saponified(gms)//
volume=2.6//volume of alcoholic KOH consumed to neutralize fatty acids(ml)//
normality_KOH=0.02//normality of KOH //
A=volume*normality_KOH*56/wt_oil//formula for acid value//
printf("\nAcid value of oil is %.3f mg/g",A);
if A<=0.1 then printf("\nAs the acid value is less than 0.1, oil can be used for lubrication");
else printf("\nAs the acid value is more than 0.1, oil cannot be used for lubrication");
    end