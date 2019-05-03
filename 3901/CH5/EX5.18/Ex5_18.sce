//This code needs symbolic tool(scilab-scimax) to be instaslled
//The tool should be installed properly in Ubuntu-14.04 and scilab-5.5.0 as it may not work in higher versions
//limit function can be accessed after installing symbolic toolbox

clc
z = %z;
Syms n z1;


//*******************************part(a)*******************************
X  =-z*(z+0.4)/((z-0.8)*(z-2))
X1 = X.den;
zp = roots(X1);
X1 = -z1*(z1+0.4)/((z1-0.8)*(z1-2))
F1 = X1*(z1^(n-1))*(z1-zp(1));
F2 = X1*(z1^(n-1))*(z1-zp(2));
h1 = limit(F1,z1,zp(1));
disp(h1,'h1[n]=')
h2 = limit(F2,z1,zp(2));
disp(h2,'h2[n]=')
h = h1+h2;
disp(h,'h[n]=')

//*******************************part(b)*******************************
X  =-z*(z+0.4)/((z-0.8)*(z-2))
X1 = X.den;
zp = roots(X1);
X1 = -z1*(z1+0.4)/((z1-0.8)*(z1-2))
F1 = X1*(z1^(n-1))*(z1-zp(1));
F2 = X1*(z1^(n-1))*(z1-zp(2));
h1 = limit(F1,z1,zp(1));
disp(h1*'u(n)','h1[n]=')
h2 = limit(F2,z1,zp(2));
disp((h2)*'u(-n-1)','h2[n]=')
disp((h1)*'u(n)'-(h2)*'u(n-1)','h[n]=')

//*******************************part(c)*******************************
X  =-z*(z+0.4)/((z-0.8)*(z-2))
X1 = X.den;
zp = roots(X1);
X1 = -z1*(z1+0.4)/((z1-0.8)*(z1-2))
F1 = X1*(z1^(n-1))*(z1-zp(1));
F2 = X1*(z1^(n-1))*(z1-zp(2));
h1 = limit(F1,z1,zp(1));
disp(h1*'u(-n-1)','h1[n]=')
h2 = limit(F2,z1,zp(2));
disp((h2)*'u(-n-1)','h2[n]=')
disp(-(h1)*'u(-n-1)'-(h2)*'u(-n-1)','h[n]=')
