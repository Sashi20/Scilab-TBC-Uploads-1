clc; clear;
// Example 3.4
// Page 64
// Given data
depth=50.0; // rainfall depth in mm
T=40; // duration of rainfall in min
//estimation
I=depth/T*60; // rainfall intensity, mm/h
P=1/7.5; // probability of observing similar rainfall events, from figure 3.6
printf('The probability of observing similar rainfall events = %f',P)
clear




