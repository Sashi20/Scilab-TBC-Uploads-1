//Example 10_4
clc;
clear;
close;

//Given data :
tc=12;// Thickness of clay layer in m
ts=5;// Thickness of dense sand layer in m
tf=5;// Height of fill in m
gc=16;// Unit weight of clay layer in kN/m^3
gs=20;// Unit weight of dense sand layer in kN/m^3
gf=18;// Unit weight of fill in kN/m^3
D=6;// Thickness in m
Cc=0.3;// Compression Index

// Sub-layer 1
D1=3;// Depth to middle of sub-layer 1 in m
Is1=(gs*ts)+(D*D1);// Inital sigma-dash at middle of sub-layer 1 in kN/m^2
e01=1.74;// e0 at middle of sub-layer 1 (From Fig. 10.8)
Ds1=gf*tf;// Difference between final sigma-dash and initial sigma-dash in kN/m^2
Fs1=Is1+Ds1;// Final sigma-dash at middle of sub-layer 1 in kN/m^2
S1=(Cc*log10(Fs1/Is1)*D)/(1+e01);// // Settlement of sub-layer 1 in m
disp(S1,"Settlement of sub-layer 1 in m");

// Sub-layer 2
D2=9;// Depth to middle of sub-layer 2 in m
Is2=(gs*ts)+(D*D2);// Inital sigma-dash at middle of sub-layer 2 in kN/m^2
e02=1.70;// e0 at middle of sub-layer 2 (From Fig. 10.8)
Ds2=gf*tf;// Difference between final sigma-dash and initial sigma-dash in kN/m^2
Fs2=Is2+Ds2;// Final sigma-dash at middle of sub-layer 2 in kN/m^2
S2=(Cc*log10(Fs2/Is2)*D)/(1+e02);// // Settlement of sub-layer 2 in m
disp(S2,"Settlement of sub-layer 2 in m");

TS=S1+S2;// Total settlement of sub-layers in m
disp(TS,"Total settlement of sub-layers in m");
// The answers vary due to round off error
