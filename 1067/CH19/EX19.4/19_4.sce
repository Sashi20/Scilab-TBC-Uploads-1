clc;
clear;
v1=11e3;
v2=22e3;
v3=3.3e3;
r=10000e3;
zb1=v1^2/r;
zb2=v2^2/r;
zb3=v3^2/r;
zp1=300/zb3;
zp2=300*(zb2/zb3)/zb2;
zp3=300*(zb1/zb3)/zb1;
zp1=round(zp1*10)/10;
zp1=round(zp1);
zp2=round(zp2*10)/10;
zp2=round(zp2);
zp3=round(zp3*10)/10;
zp3=round(zp3);
mprintf("the per unit values =%dp.u. ; %dp.u.; %dp.u. ",zp1,zp2,zp3);
