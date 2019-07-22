// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 8-3
//Given
m_a=2.00; //mass of train A, kg
m_b=1.00; //mass of train B, kg
v_a= +0.250; //velocity of train A (towards east), m/s
v_b= -0.500; //velocity of train B (towards west), m/s

//Computations
p_a=m_a*v_a; //in kg-m/s
p_b=m_b*v_b; //in kg-m/s
p=p_a+p_b;  //in kg-m/s
m=m_a+m_b;  //in kg
v=p/m; //Velocity of composite train, m/s

if v>0
    printf("The composite train, after crash, will move east at %.3f m/s.",v)
end

if v<0
    printf("The composite train, after crash, will move west at %.3f m/s.",-v)
end

if v==0
    printf("The composite train, after the crash, is at rest.")
end
