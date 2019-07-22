clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 10.1
// Given that
R_a = 0.003 // Surface finish in micro meter
K_reone = 10 // Minor cutting edge angle (ECEA) in degrees
K_re = 20 // Lead angleof the tool (SCEA) in degrees
alpha  = K_re+K_reone
f = 4*R_a*(cotd(90 - alpha)+ cotd(K_reone))  // Feed
f_max = f/1.4  // Maximum feed
printf("The Maximum feed = %.3f mm",f_max)
