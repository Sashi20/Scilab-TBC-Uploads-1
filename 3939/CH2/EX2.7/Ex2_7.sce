clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 2.7
// Given that
V = 300 // Cutting speed in m/min
D = 200 // Diameter of the face milling cutter in mm
ai = 0.3 // un-cut chip thickness in mm
k = 45 // Lead angle of the cutter in degrees
b = 150 // width of the cut in mm
L = 700 // Length of the cut in mm
nt = 18 // Number of inserts on the cutting tool
N = V*1000/(%pi*D) // Spindle rotational speed in rpm
ft = ai/cosd(k) // Feed per tooth in mm 
fr = nt*ft*N // Feed rate of the cutter in mm/min 
Le_max = (D/2)+(D/2) // Maximum length the cutter can travel
Le = (D/2)-((1/2)*(sqrt((D^2)-(b^2)))) // Length of the approach in mm
tm = (L+Le)/fr // Machining time in min
printf("\n The Machining time = %.2f min",tm)
