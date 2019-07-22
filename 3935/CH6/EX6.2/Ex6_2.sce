//Example 6.2, Page Number 204
//Combinational Logic
clc;

//Inputs
//Binary to decimal conversion
A=[0;0;0;0;1;1;1;1]       //Binary input A
B=[0;0;1;1;0;0;1;1]       //Binary input B
C=[0;1;0;1;0;1;0;1]       //Binary input C

//Outputs
Z=bitcmp(C,1)                        //Bit compliment of input C
D=bitand(A,B)                          //AND operation of inputs A,B
E=bitor(D,Z)                           //OR operation of D and Z(Compliment of C)
F=bitcmp((bitand(E,Z)),1)             //NAND operation of E and Z(Compliment of C)

//Results
disp('Input A')
disp("  A")
disp(A)
disp('Input B')
disp("  B")
disp(B)
disp('Input C')
disp("  C")
disp(C)
disp('AND operation of inputs A,B:')
disp("  D")
disp(D)
disp('OR operation of D and Z(Compliment of C):')
disp("  E")
disp(E)
disp('NAND operation of E and Z(Compliment of C):')
disp("  F")
disp(F)

//Outputs
 
//Input A      Input B    Input C    AND operation of inputs A,B:      OR operation of D and Z(Compliment of C):        NAND operation of E and Z(Compliment of C):

// A              B           C                 D                                      E                                                     F                       
// 0.             0           0                 0                                      1                                                     0                                      
// 0.             0           1                 0                                      0                                                     1                       
// 0.             1           0                 0                                      1                                                     0                       
// 0.             1           1                 0                                      0                                                     1                       
// 1.             0           0                 0                                      1                                                     0                       
// 1.             0           1                 0                                      0                                                     1                       
// 1.             1           0                 1                                      1                                                     0                       
// 1.             1           1                 1                                      1                                                     1                       








