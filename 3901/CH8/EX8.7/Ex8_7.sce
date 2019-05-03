clc
clear

f0=100;
T0=1/f0;
B=10000;
fs=2*B;
T=1/fs;
N0=fs/f0;
printf("N0_calculated is %d\nfor proper DFT N0 should be 2^n closet to %d(i.e;N0=256)",N0,N0);
