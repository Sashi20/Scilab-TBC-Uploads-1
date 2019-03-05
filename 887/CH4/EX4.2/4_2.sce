clc
//ex4.2
//Vs is a direct source
//Circuit is in steady state prior to t=0
//Before t=0, the inductor behaves as a short circuit ==&gt;V(t)=0 for t&lt;0 and i(t)=Vs/Ri for t&lt;0
//Before the switch opens, current circulates through Vs,R1 and the inductance and When it opens, nothing changes but the return path through R2
//Then, a voltage appears across R2 and the inductance, causing the current to decay
//There are no sources driving the circuit after the switch opens ==&gt;the steady-state solution is zero for t&gt;0
//Hence, the solution for i(t) is given by i(t)=K*e^(-t/T) for t&gt;0 in time constant T=L/R2
//For current to be continuous i(0+)=(Vs/R1)=K*e^0=K ==&gt; K=Vs/R1
//The voltage is given by V(t)=(L*d(i(t))/dt)=-(L*Vs*e^(-t/T))/(R1*T) for t&gt;0
disp('Both current and voltage are 0 for t&lt;0')
disp('')
disp('And for t&gt;0:')
disp('The expression for the current is i(t)=(Vs/R1)*e^(-t/T)')
disp('The expression for the volatge is V(t)=-(L*Vs*e^(-t/T))/(R1*T)')