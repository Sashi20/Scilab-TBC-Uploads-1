// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 38.3 - Product Proliferation
// Given that
truck_models = 100
wheel_base = 7
basic_engine = 42
axles = 43
transmissions = 62
rear_axles = 162
annual_production = 130000 // Trucks
Possible_combinations = truck_models*wheel_base*basic_engine*axles*transmissions*rear_axles
company_produce_trucks = Possible_combinations/annual_production
printf('%d years without ever producing the same truck twice',company_produce_trucks)
// Answers may vary due to round off error
