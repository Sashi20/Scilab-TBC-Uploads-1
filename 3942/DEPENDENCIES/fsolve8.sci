//Chapter 8 example 8-9
//Following is the function to determine Total volume flow rate (y(1)), volume flow rate 1 (y(2)), volume flow rate 2 (y(3)), Friction factor 1 (y(4)), Friction factor 2 (y(5)), Friction factor 3 (y(6)), Velocity 1 (y(7)), Velocity 2 (y(8)), Velocity 3 (y(9)), Reynolds number 1 (y(10)), Reynolds number 2 (y(11)) and  Reynolds number 3 (y(12))  by solving 12 non linear equations using fsolve function
function f2=fsolve8(y)
    f2(1)=y(1)-y(2)-y(3)
    f2(2)=(h_L*2*g)-((y(4)*y(7)^2*Length1/D)+(((y(5)*Length2/D)+Sigma_K_L_shower)*(y(8)^2)))
    f2(3)=(h_L_3*2*g)-((y(4)*y(7)^2*Length1/D)+(((y(6)*Length3/D)+Sigma_K_L_reservoir)*(y(9)^2)))
    f2(4)=y(7)-(y(1)/A)
    f2(5)=y(8)-(y(2)/A)
    f2(6)=y(9)-(y(3)/A)
    f2(7)=y(10)-(D*y(7)/Nu)
    f2(8)=y(11)-(D*y(8)/Nu)
    f2(9)=y(12)-(D*y(9)/Nu)
    f2(10)=(1/y(4))-(4*(log10(Epsilon_by_D+(2.51/(y(10)*sqrt(y(4))))))^2)
    f2(11)=(1/y(5))-(4*(log10(Epsilon_by_D+(2.51/(y(11)*sqrt(y(5))))))^2)
    f2(12)=(1/y(6))-(4*(log10(Epsilon_by_D+(2.51/(y(12)*sqrt(y(6))))))^2)
endfunction
