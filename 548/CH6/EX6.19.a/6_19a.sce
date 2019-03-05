exec('6_19data.sci')
A=D*S*Cdo/2;
B=2*Wo^2/(D*S*%pi*e*AR);
V=poly(0,'V');
p=Pa*V-A*V^4-B
disp(roots(p),"Roots of Polynomial p:",p,"p=","Polynomial p:")
disp("As we can see the maximum positive root is 81.01 (approx), which is the maximum velocity at sea level of the UAV.")