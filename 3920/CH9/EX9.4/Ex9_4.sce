// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 9-4
//Given
m_m=1.00; //mass of  matter, kg
m_am=1.00; //mass of anti-matter, kg
c=3.00*10^8; //speed of light, m/s^2

//Computations
m_left=m_m-m_am; //matter left, kg

if m_left>0
    printf("%.2f kg of matter is left over.\n", m_left)
end

if m_left<0
    printf("%.2f kg of anti-matter is left over.\n", -m_left)
end

if m_left==0
    printf("No matter or antimatter is left over.\n")
end

m=m_m+m_am-abs(m_left);  //in kg
E=m*c^2; //Einstein mass-energy formula, Energy in joules(J)

printf("The Energy, E = %.2E J.",E)
