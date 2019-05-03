//scilab symbolic toolbox(scilab-scimax) is needed for this code
//symbolic toolbox should be strictly installed in Ubuntu-14.04 and Scilab-5.0.0 as it's not supported in higher versions 
//limit can be used after installing symbolic toolbox only
clc

s=%s;
num =poly([30 20],'s','coeff')
den =poly([0 5 2 1],'s','coeff')
X = num/den;
disp (X,"X(s)=")
SX = s*X;
Initial_Value =limit(SX,s,%inf);
final_value =limit(SX,s,0); 
disp(Initial_Value,"x(0)=")
disp(final_value,"x(inf)=")
