s=%s;
A =[0 1;-2 -3];
B =[0;1];
x =[1 0];
[r c]= size (A)
p=s*eye(r,c)-A // s*I-A
q=inv(p)
c=x*q*B;
disp(c,"required transfer function =")
