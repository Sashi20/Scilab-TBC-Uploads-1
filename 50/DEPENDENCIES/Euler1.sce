function [u,t] = Euler1(u0,t0,tn,h,f)

//Euler 1st order method solving ODE
//  du/dt = f(u,t), with initial 
//conditions u=u0 at t=t0.  The 
//solution is obtained for t = [t0:h:tn]
//and returned in u

umaxAllowed = 1e+100;

t = [t0:h:tn]; u = zeros(t); n = length(u); u(1) = u0;

for j = 1:n-1
	u(j+1) = u(j) + h*f(t(j),u(j));
	if u(j+1) > umaxAllowed then
           disp('Euler 1 - WARNING: underflow or overflow');
	   disp('Solution sought in the following range:');
           disp([t0 h tn]);
	   disp('Solution evaluated in the following range:');
	   disp([t0 h t(j)]);
           n = j; t = t(1,1:n); u = u(1,1:n);
	   break;
	end;
end;

endfunction
