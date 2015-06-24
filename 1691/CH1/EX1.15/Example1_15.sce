//Example 1.15
clc
disp("Step 1: Identify topology")
disp("  By shorting output(Vo = 0), feedback voltage V_f becomes zero, hence it is a voltage sampling. Since feedback is mixed in series with input the topology is voltage series feedback amplifier")
disp("")
disp("Step 2 and Step 3: Find input and output circuit.")
disp("  To find input circuit, set Vo = 0. This places the parallel combination of resistors 3.3K and 3.3K at the first emitter. To find output circuit, set Ii = 0. This places resistors 3.3K and 3.3K in series across the output. The resultant circuit is shown in fig 1.48")
disp("")
disp("Step 4: Replace transistor with its h-parameter equivalent as shown in fig.1.49")
disp("")
disp("Step 5: Find open loop transfer gain.")
disp("A_v = A_v1*A_v2")
disp("    = V_i2/V_i1 * Vo/V_i2")
disp("    = Vo/V_i2 = -h_fe*R_L2 / R_i2")
rl2=3.3+3.3
format(4)
disp(rl2,"where  R_L2(in k-ohm) =")
disp("and  R_i2 = h_ie = 2 K")
voi=(-50*6.6)/2
disp(voi,"Therefore,  A_v2 = Vo/V_i2 =")
disp("V_i2/V_i1 = -h_fe*R_L1 / R_i1")
rl1=((51*2)/(53))
format(5)
disp(rl1,"where  R_L1(in k-ohm) =")
disp("and  R_i = [h_ie + (1+h_fe)(3.3K||3.3K)]")
ri=2+(51*1.65)
format(6)
disp(ri,"Therefore,  R_i1(in k-ohm) = ")
vi21=(-50*1.92)/(86.15)
format(6)
disp(vi21,"Therefore,  A_v1 = V_i2/V_i1 =")
av=-165*-1.114
format(7)
disp(av,"Therefore,  A_v =")
disp("")
disp("Step 6: Calculate beta")
be=3.3/6.6
format(4)
disp(be,"beta = V_f/Vo =")
disp("We know that,  D = 1 + beta*A_v =")
avf=183.86/92.93
format(6)
disp(avf,"A_vf = A_v/D =")
