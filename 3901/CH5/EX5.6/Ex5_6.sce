//This code needs symbolic tool(scilab-scimax) to be instaslled
//The tool should be installed properly in Ubuntu-14.04 and scilab-5.5.0 as it may not work in higher versions
//limit function can be accessed after installing symbolic toolbox

clc
Syms n z;
H1 = (2/3)/(z+0.2);
H2 = (8/3)/(z+0.8);
H3 = (2)/(z+0.5);
F1 = H1*z^(n)*(z+0.2);
F2 = H2*z^(n)*(z+0.8);
F3 = H3*z^(n)*(z+0.5);

h1 = limit(F1,z,-0.2);
disp(h1,'h1[n]=')
h2 = limit(F2,z,-0.8);
disp(h2,'h2[n]=')
h3 = limit(F3,z,-0.5);
disp(h3,'h3[n]=')
h = h1-h2+h3;
disp(h,'h[n]=') 
