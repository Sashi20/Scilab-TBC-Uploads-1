// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 5.1 - Wear allowance on a fixed gage
// Given that
hole_diameter = 20 // hole diameter in mm
tolerance = 0.10 
wear = 0.025  // 2.5% of wear allowance
Total_tolerance = tolerance+tolerance // Total Tolerance band in mm
wear_allowance = wear*Total_tolerance 
acceptable_hole_diameter = hole_diameter - tolerance // Minimum acceptable hole diameter in mm
nominal_size = acceptable_hole_diameter + wear_allowance // Nominal size of GO gage in mm
// NO GO gage is used to check the maximum hole diameter
nominal_size_NOGO  = hole_diameter + tolerance // Nominal size of NOGO gage in mm
printf('Nominal size of GO gage = %.3f mm \n Nominal size of NOGO gage = %.2f mm \n',nominal_size,nominal_size_NOGO)
// Answer varies due to round off error
