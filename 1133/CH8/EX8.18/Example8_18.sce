//Example 8.18
clc
disp("The fig shows the connections for 74LS191 to get desire operation. We can design the combinational circuit for such counter from the truth table shown below.")
disp("")
disp("Q3  Q2  Q1  Q0    Y")
disp("0   0   0   0     0")
disp("0   0   0   1     0")
disp("0   0   1   0     0")
disp("0   0   1   1     1")
disp("0   1   0   0     1")
disp("0   1   0   1     1")
disp("0   1   1   0     1")
disp("0   1   1   1     1")
disp("1   0   0   0     1")
disp("1   0   0   1     1")
disp("1   0   1   0     1")
disp("1   0   1   1     1")
disp("1   1   0   0     1")
disp("1   1   0   1     1")
disp("1   1   1   0     1")
disp("1   1   1   1     0")
disp("")
disp("K=map simplification")
disp("         Q1''Q0''  Q1''Q0  Q1Q0  Q1Q0''")
disp("Q3''Q2''     0       0      1     0")
disp("Q3''Q2      1       1      1     1")
disp("Q3Q2       1       1      0     1")
disp("Q3Q2''      1       1      1     1")
disp("")
disp("Therefore,  PL'' = Y = Q3''Q1Q0 + Q3''Q2 + Q3Q1'' + Q3Q2'' + Q2Q1Q0''")
disp("After switch ON, if the counter output is other than 1110 through 0011, the PL'' goes low and count 1110 is loaded in the counter. The counter is then decremented on the occurrence of clock pulses. When counter reaches 0010, the PL'' again goes low and count 1110 is loaded in the counter")
