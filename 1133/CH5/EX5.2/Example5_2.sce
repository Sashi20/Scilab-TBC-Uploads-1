//Example 5.2
clc
disp("The truth table for the given problem is as shown below.")
disp("  C    D3    D2    D1    Output")
disp("  0    x     x     x        0")
disp("  0    0     0     0        0")
disp("  0    0     0     1        1")
disp("  0    0     1     0        1")
disp("  0    1     0     0        1")
disp("")
disp("K-map simplification")
disp("        D1''D2''     D1''D2     D1D2     D1D2''")
disp("C''D3''     0          0        0        0")
disp("C''D3      0          0        0        0")
disp("CD3       1          X        X        X")
disp("CD3''      0          1        X        1")
disp("")
disp("Therefore,    Y = CD3 + CD2 + CD1")
