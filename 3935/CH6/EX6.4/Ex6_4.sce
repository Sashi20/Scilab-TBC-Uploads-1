//Example 6.4, Page Number 212
//Sum of Products and Product of Sums
clc;

//Inputs
//Given inputs
A=[0;0;1;1]            //Input A
B=[0;1;0;1]             //Input B

//Outputs
S=bitxor(A,B)               //Sum of A and B
C=bitand(A,B)                          //Carry of A and B

//Results
disp("Input A")
disp(A)
disp("Input B")
disp(B)
disp("Sum of A and B:")
disp(S)
disp("Carry of A and B")
disp(C)
disp('The sum-of-products method applied to output S yields:')
disp('S=(A''+B)+(A+B'')')
disp('The product-of-sums method applied to output S yields:')
disp('S=(A+B).(A''+B'')')
disp('The sum-of-products method applied to output C yields:')
disp('C=A.B')
disp('The product-of-sums method applied to output C yields:')
disp('C=(A+B).(A+''B).(A''+B'')')

//Outputs
 
//Input A                 Input B            Sum of A and B:               Carry of A and B
// 0                        0                      0                           0          
// 0                        1                      1                           0          .
// 1.                       0                      1                           0           
// 1.                       1                      0                           1           

//The sum-of-products method applied to output S yields:
//S=(A'+B)+(A+B')
//The product-of-sums method applied to output S yields:
//S=(A+B).(A'+B')
//The sum-of-products method applied to output C yields:
//C=A.B
//The product-of-sums method applied to output C yields:
//C=(A+B).(A+'B).(A'+B')


//If we use the product-of-sums result for S and the sum-of-products result for C,we obtain a circuit using the fewest number of gates

