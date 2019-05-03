
clc
clear

fN=2*3000;//Nyquist sampling rate
fA=fN*(4/3);//actual sampling rate
L=256;//as it shouldn't be more than 0.05% and shouls be power of 2
bit=8;
bit_rate=bit*fA;
printf("\n required sampling rate= %.0f, bits required= %d, bit_rate= %d bits/s\n",fA,bit,bit_rate);
