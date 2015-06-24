//clc()
//for irregular boundary,
//x = y
alpha1 = 0.732;
beta1 = 0.732;
alpha2 = 1;
beta2 = 1;
//substituting the above value to obtain simultaneous equation we get the following matrix,
A = [4,-0.845,0,-0.845,0,0,0,0,0;-1,4,-1,0,-1,0,0,0,0;0,-1,4,0,0,-1,0,0,0;-1,0,0,4,-1,0,-1,0,0;0,-1,0,-1,4,-1,0,-1,0;0,0,-1,0,-1,4,0,0,-1;0,0,0,-1,0,0,4,-1,0;0,0,0,0,-1,0,-1,4,-1;0,0,0,0,0,-1,0,-1,4];
disp(A,"A = ")
B = [173.2;75;125;75;0;50;175;100;150];
disp(B,"B = ")
T = inv(A)*B;
T11 = det(T(1,1));
T21 = det(T(2,1));
T31 = det(T(3,1));
T12 = det(T(4,1));
T22 = det(T(5,1));
T32 = det(T(6,1));
T13 = det(T(7,1));
T23 = det(T(8,1));
T33 = det(T(9,1));
disp(T11,"T11 = ")
disp(T21,"T21 = ")
disp(T31,"T31 = ")
disp(T12,"T12 = ")
disp(T22,"T22 = ")
disp(T32,"T32 = ")
disp(T13,"T13 = ")
disp(T23,"T23 = ")
disp(T33,"T33 = ")
