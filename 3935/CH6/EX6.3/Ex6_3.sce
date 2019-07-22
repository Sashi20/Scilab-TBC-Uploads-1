//Example 6.3, Page Number 207
//Simplifying a Boolean Expression
clc;

//Inputs
//Given boolean expression:
//X=(A.B.C)+(B.C)+(A'.B)

//Outputs
//Results
disp("Given boolean expression:")
disp('X=(A.B.C)+(B.C)+(A''B)')
disp("The above equation can be rewritten using the associative law and the fundamental law as Z.1=Z")
disp('X=A.(B.C)+1.(B.C)+(A''B)')
disp("Using distributive law")
disp('X=(A+1).(B.C)+(A''B)')
disp('X=(B.C)+(A''B)')
disp("Because A+1=1 and 1.(B.C )=B·C")
disp("Furthermore, using the associative and distributive laws")
disp('X=B.(C+A'')')

//Outputs
// Given boolean expression:
//X=(A.B.C)+(B.C)+(A'B)
//The above equation can be rewritten using the associative law and the fundamental law as Z.1=Z
//X=A.(B.C)+1.(B.C)+(A'B)
//Using distributive law
//X=(A+1).(B.C)+(A'B)
//X=(B.C)+(A'B)
//Because A+1=1 and 1.(B.C )=B·C
//Furthermore, using the associative and distributive laws
//X=B.(C+A')




