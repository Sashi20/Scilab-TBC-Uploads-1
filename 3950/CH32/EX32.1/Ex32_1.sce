// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 32.1 - Build cycle time in stereolithography
// Given that
b = 40
A1 = b^2 // Cross-sectional area of the base
t = 5
H = 52 // Height of cup
tl = 0.10 // Layer thickness
T_su = 20 // Setup time
A2 = 40^2 - 32^2 
v = 950 // Speed
TH = H - t // Total height
n_l = t/tl // Number of layers to build base
n_b = TH/tl  // Number of layers to build the walls
DE_p = 0.25 //Spot diameter
T_r = 21 // Repositioning and recoating time for each layer
//A2 = 
T_i = (A1/(v*DE_p))+T_r
T_i_wall = (A2/(v*DE_p)) + T_r
T_c = (T_su*60)+ (n_l*T_i) + (n_b*T_i_wall)
printf('Total build cycle time = %.0f s',T_c)
