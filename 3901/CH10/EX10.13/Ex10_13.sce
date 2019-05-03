//Inverse Z Transform
//symbolic tool(scilab-scimax) is needed which should be installed properly in Ubuntu 14.04 and Scilab-5.5.0
//limit function can be used only after installing symbolic toolbox

clc
Syms n z;
H1 = (-2*z)/(z-(1/3));
H2 = (3*z)/(z-0.5);
H3 = (24*z)/(z-1);
F1 = H1*z^(n-1)*(z-(1/3));
F2 = H2*z^(n-1)*(z-0.5);
F3 = H3*z^(n-1)*(z-1);
h1 = limit(F1,z,(1/3));//finding symbolic limits
disp(h1,'h1[n]=')
h2 = limit(F2,z,0.5);//finding symbolic limits
disp(h2,'h2[n]=')
h3 = limit(F3,z,1);//finding symbolic limits
disp(h3,'h3[n]=')
h = h1+h2+h3;
disp(h,'h[n]=') 
