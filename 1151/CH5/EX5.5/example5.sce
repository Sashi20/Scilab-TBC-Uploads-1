s=%s; 
num=s+1; 
den=s*s*(s+3.6); 
t=syslin('c',num/den); 
clf; 
evans(t); 
mtlb_axis([-5 5 -5 5]);
