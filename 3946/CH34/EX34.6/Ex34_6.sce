//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
TA = 36;    //(No. of teeth on wheel A)
TB = 45;    //(No. of teeth on wheel B)
NC = 150;   //(r.p.m.)(Speed of arm C)

//Let NA = Speed of wheel A,
//NB = Speed of wheel B,
//NC = Speed of arm C.

//Speed of the wheel A relative to arm C = NA - NC

//Speed of wheel B relative to arm C = NB - NC

//Since the wheels A and B revolve in opposite directions:
//(NB - NC)/(NA - NC) = - TA/TB     -(i)

//Speed of wheel B when wheel A is fixed:
NA = 0;
NC = 150;    //(r.p.m.)

//Substituting this value of NC in equation (i):
NB = (NC * TA/TB) + NC;         //(r.p.m.)
printf("Speed of wheel B when wheel A is fixed = %.2f r.p.m.\n",NB);

//Speed of wheel B when wheel A makes 300 r.p.m.:
//Since the wheel A makes 300 r.p.m. anticlockwise, therefore:
NA = -300;    //(r.p.m.)

//Substituting this value of NA in equation (i):
NB = -(NA - NC)*(TA/TB) + NC;    //(r.p.m.)
printf("Speed of wheel B when wheel A makes 300 r.p.m. = %.2f r.p.m.",NB);
