clc; clear;
// Example 7.1
// Page 191
// Given data
L=300; // length of pipe, m
l=6; // length of pipe section, m
D=305; // diameter of pipe, mm
P=1000; // test pressure, kPa
OL=10; // observed leakage, L/h
//estimation
N=L/l; //  number of joints
QL=N*D*P^(1/2)/32600; // allowable leakage
if OL<QL then
    disp('the pipe is sufficiently watertight')
  
else
  disp('the pipe is not suffieciently watertight')  
end
clear




