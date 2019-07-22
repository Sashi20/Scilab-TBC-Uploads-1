clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 9.2
// Given that
V_one = 70 // Cutting speed
V_two = 70 // Cutting speed
V_three = 140 
f_1 = 0.15
f_3 = 0.15
f_2 = 0.25
T_1 = 120 // Mean tool life in min
T_2 = 105 // Mean tool life in min
T_3 = 24 // Mean tool life in min
n = log(V_three/V_one)/log(T_1/T_3)  // (V_three/V_one = (T_1/T_3)^n) 
a = n*(log(T_2/T_1)/log(f_1/f_2)) 
K_t = V_one*(T_1^n)*(f_1^a)
printf("The parameters for extended tool life = %.2f & %.2f, \n The tool life equation = %.0f",n,a,K_t)
// The answers vary due to round off error
