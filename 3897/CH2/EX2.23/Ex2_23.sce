clc; clear;
// Example 2.23
// Page 45
// Given data
D=18; // pipe diameter, inch
S=1.6; // slope over 400 ft distance
d=6; //depth of flow, inch
// estimation
S=1.6/400; // slope
Q=2900; // flow rate in gpm from nomograph
V=3.8; // velocity, fps
depth_ratio=d/D; 
q=0.22*Q; // from partial flow diagram, for a given depth_ratio values
v=0.82*V; // from partial flow velocity diagram, for a given depth_ration vlaue
printf('The discharge q = %f gpm\n',q)
printf('The velocity in pipe v = %f ft/s\n',v)
clear





