// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 3.35
clc
clear
//Given Data Set in the Problem
dens=1000
g=9.81
L=6
b=2.5
d=2
h=1.5
FD=1

//Calculations
                    //1) horizontal accn imparted
 //a)
   tan_theta=(d-h)/(L/2)
   a=g*tan_theta
 //b)
    CE=2
    ED=1
    FD=1
    h1=d/2
    A1=d*b
    F1=dens*g*A1*h1
    A2=FD*b
    h2=FD/2
    F2=dens*g*A2*h2
    //c)
    F=F1-F2
    F_prove=L*b*(CE+FD)/2*dens*a;
    //this too can be used ,,calulate colume V=L*b*h
    //then.....F_=dens*V*a     //Force required to accelerate the mass of water in the tank
    mprintf("Part 1)\nThe acceleration is %.2f m/s^2 ",a)
    mprintf("\nThe Force on ends CE and FD are %.2f N and %.2f N respectively",F1,F2)
    mprintf("\nForce required to accelerate the mass of water in the tank is %.2f N \n",F)
    mprintf("Using Volume in tank and its acceleration, Force found is also %.2f N. Hence, proved\n",F_prove)
                        //2) horizontal accn when front bottom corner is just exposed
    //a)
    CE=2
    ED=6
    FD=0
    tan_theta=CE/ED
    a=g*tan_theta           //acceleration 
    //b)
    h1=CE/2
    A1=CE*b
    F1=dens*g*A1*h1
    F2=0
    //c)
    F=F1-F2
    F_prove=L*b*(CE+FD)/2*dens*a;
    mprintf("Part 2)\nThe acceleration is %.2f m/s^2 ",a)
    mprintf("\nThe Force on ends CE and FD are %.2f N and %.2f N respectively",F1,F2)
    mprintf("\nForce required to accelerate the mass of water in the tank is %.2f N \n",F)
    mprintf("Using Volume in tank and its acceleration, Force found is also %.2f N. Hence, proved\n",F_prove)
                    //2) horizontal accn when front bottom in half exposed
    //a)
    CE=2
    ED=3
    FD=0
    tan_theta=CE/ED
    a=g*tan_theta           //acceleration 
    //b)
    h1=CE/2
    A1=CE*b
    F1=dens*g*A1*h1
    F2=0
    //c)
    F=F1-F2
     F_prove=(L/2)*b*(CE+FD)/2*dens*a;
      mprintf("Part 3)\nThe acceleration is %.2f m/s^2 ",a)
      mprintf("\nThe Force on ends CE and FD are %.2f N and %.2f N respectively",F1,F2)
    mprintf("\nForce required to accelerate the mass of water in the tank is %.2f N \n",F)
    mprintf("Using Volume in tank and its acceleration, Force found is also %.2f N. Hence, proved\n",F_prove)
