// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 20-5
//Given
mass=300; //mass of meteoroid, mg
u_percent=99.9; //speed of space vessel as percentage of speed of light.

//Computations
u=u_percent/100;
m=1/sqrt(1-u^2);
m_app=m*mass; //apparent mass of meteoroid, mg

printf("The apparent mass of the meteoroid when it strikes the vessel is %.2f grams(g).",m_app/1000)  //The answer may vary due to round-off errors.
