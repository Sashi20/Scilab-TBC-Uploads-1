//Chapter 10
//Example 10_13
//Page 247

clear;clc;

f=50;
ll=150;
r=0.1;
xl=0.5;
y=3*1e-6;
pd=50*1e6;
v_r=110*1e3;
pfr=0.8;

tr=r*ll;
ty=y*ll;
txl=xl*ll;

z=tr+%i*txl;
vr=v_r/sqrt(3);
ir=pd/sqrt(3)/v_r/pfr;
ir_p=ir*(pfr-%i*sin(acos(pfr)));
ic1=vr*%i*ty/2;
il=ir_p+ic1;
vs=vr+il*z;
ic2=vs*%i*ty/2;
is=il+ic2;

printf("Total resistance / phase = %.2f ohm \n\n",tr);
printf("Total reactance / phase = %.2f ohm \n\n",txl);
printf("Total susceptance / phase = %.6f S \n\n",ty);

printf("Recieving end voltage = %.0f V \n\n", vr);
printf("                      = %.0f+j0 \n\n", vr);
printf("Load current = %.2f+j(%.2f) \n\n", real(ir_p), imag(ir_p));
printf("Charging current at load end = j(%.2f) \n\n", imag(ic1));
printf("Line current = %.2f+j(%.2f) \n\n", real(il), imag(il));
printf("Sending end voltage = %.2f+j(%.2f) \n\n", real(vs), imag(vs));
printf("Line to line sending end voltage = %.2f kV \n\n", abs(vs)*sqrt(3)/1000);
printf("Charging current at sending end = j(%.2f) \n\n", imag(ic2));
printf("Sending end current = %.2f+j(%.2f) A \n\n", real(is), imag(is));
printf("Sending end current = %.2f A \n\n", abs(is));

