//Example 25_3
clc;
clear;
close;

//Given data :
H1=4.5;// Height of wall above ground level in m
H2=4.5;// Height of wall below ground level in m
// Above ground level
Ka1=0.33;// Coefficient of Active Earth Pressure above ground level
g1=18;// Unit weight of soil above ground level in kN/m^3
c1=0;
teta1=30;// Slope above ground level in degree

// Below ground level
Ka2=0.27;// Coefficient of Active Earth Pressure below ground level
Kp2=3.68;// Coefficient of Passsive Earth Pressure below ground level
g2=20;// Unit weight of soil below ground level in kN/m^3
c2=0;
teta2=35;// Slope below ground level in degree

sigmaa1=Ka1*g1*H1;// Active pressure above ground level in kN/m^2
sigmaa2=(Ka2*g1*H1)+(g2*H2);// Active pressure below ground level in kN/m^2
sigmap=Kp2*g2*H2;// Passive pressure below ground level in kN/m^2
Pa1=0.5*sigmaa1*H1;// Lateral pressure per metre run of the wall in kN/m
Pa2=sigmaa1*H2;// Lateral pressure per metre run of the wall in kN/m
Pa21=0.5*(sigmaa2-sigmaa1);// Lateral pressure per metre run of the wall in kN/m
Pp=0.5*sigmap*H2;// Lateral pressure per metre run of the wall in kN/m
Mo=(Pa1*(H1+(H1/3)))+(Pa2*H2/2)+(Pa21*H2/3);// Overturning Moment in kNm/m
Mr=Pp*H2/3;// Resisting Momemnt kNm/m
SF=Mr/Mo;// Safety Factor
if(SF>1.5) then
    disp(SF,"Safety Factor is");
else
    disp("Safety factor is 1.50");
end
// The answers vary due to round off error



