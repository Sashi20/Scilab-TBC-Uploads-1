//Example 14_16
clc;
clear;
close;

//Given data 
f=24;// Focal length of objective lens in cm
d=10.5;// Distance from objective lens to vertical axis in cm
K=100;// Multiplying constant
i=0.17;// Stadia interval in cm
// N=f0+(f*d/(f+d))
// f0=N-(f*d/(f+d))
// Let a=(f*d/(f+d)), then
a=(f*d/(f+d));
// f0=N-a => f0=N-7.3
// N=f0+7.3
// K=(f*f0)/((f+f0-N)*i)
// K=(f*f0)/((f+f0-f0-7.3)*i)
// Therefore
f0=K*(f-a)*i/f;// Focal length of anallactic lens in cm
disp(f0,"Focal length of anallactic lens in cm");
N=f0+a;// Distance between anallactic lens and objective lens in cm
disp(N,"Distance between anallactic lens and objective lens in cm");
// The answers vary due to round off error
