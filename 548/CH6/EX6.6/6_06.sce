exec('6_06data.sci')
clf();

i = 1;
Cl = 0;Cd = 0;Cl_Cd =0;Thrust = 0;
while(i&lt;=length(V)) 
    Cl(i) = 2*W/(D*S*V(i)^2);
    Cd(i) = Cdo + Cl(i)^2/(%pi*e*AR);
    Cl_Cd(i) = Cl(i)/Cd(i);
    Thrust(i) = W/Cl_Cd(i)/1000;
    Power(i)=Thrust(i)*V(i);
    R_C(i)=(Pa-Power(i))*1000*60/W;//rate of climb(R/C in meter per minute)
   i = i+1; 
end 
xlabel("Velocity (m/s)");
ylabel("Rate of climb(m/min) for CP-1");
plot2d(V,R_C,4);