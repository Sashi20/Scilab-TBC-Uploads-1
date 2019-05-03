clc; clear;
// Example 14.6
// Page 474
// Given data
Sa=85; // sound level from centerline, in dBA
Db=12; // distance, in m
Da=4; // distance of sound measurement, in m
SL_79=79; // sound level form centerline, in dBA
//estimation
SL12=Sa-(10*log10(Db/Da)); // sound level ate distance 12 m
D=Da*(10^((SL_79-Sa)/(-10))); // distance for sound level 79 dBA
printf('The sound level ate distance 12 m = %f dBA \n',SL12)
printf('The distance from the road centerline for sound level 79 dBA= %f meter',D)
clear




