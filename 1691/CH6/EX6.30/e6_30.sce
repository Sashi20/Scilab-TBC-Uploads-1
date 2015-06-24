//example6.30
disp("The circuit used for providing proper biasing is self bias, for which the various currents can be shown in the fig 6.52")
disp("Applying KVL to base emiter loop,")
disp("(-V_BE)-(I_E*R_E)+(I*R2)=0")
disp("Theredfore (I*100)-(1+beta)*I_B*10=V_BE")
disp("100I-210(I_B)=0.5     ..(1)")
disp("Applying KVL through R1 and R2,")
disp("(-R1(I+I_B))-(R2*I)+V_cc=0")
disp("-1000(I+I_B)-100I=-V_cc")
disp("1100I+1000(I_B)=25    ..(2)")
disp("Multiplying equation (1) by 11 and subtracting from equation (2) we get,")
disp("3310(I_B)=19.5")
i=19.5/3310
disp(i,"Therefore I_B(in A)=")
format(8)
disp("Thereofore I_C=(beta*I_B)=117.82 mA=I_CQ")
disp("Now n=N2/N1=1/8")
r=5*(8^2)
disp("Therefore (R''_L)=(R_L)/(n^2)=")
disp("i) For maximum power delivered to load,")
disp("V_1m=V_CEQ")
disp("Apply KVL to collector-emitter loop,")
disp("(-10I_C)-(V_CEQ)-(10*I_E)+V_CC=0")
v=25-(20*(117.82*10^-3))
format(7)
disp(v,"V_CEQ=V_cc-20*I_C     ...I_C=I_E")
p=(22.643^2)/640
disp(p,"(P_ac)_pri[in W]=(V_CEQ^2)/(2*R''_L)=")
p=0.9*0.8011
disp(p,"(P_ac)_max[in W]=0.9*0.8011=")
disp("This is maximum power delivered to the load.")
p=25*117.82*10^-3
format(7)
disp("ii) Now (P_DC)[in W]=V_CC*I_CQ=")
n=(0.721*100)/2.9455
format(6)
disp(n,"%eta=(P_ac*100)/(P_dc)=")
