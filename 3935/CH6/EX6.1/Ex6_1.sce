//Example 6.1, Page Number 200
//Binary Arithmetic 
clc;

//Inputs
//Binary to decimal conversion
a=bin2dec('1001')        //Binary input for addition
b=bin2dec('0011')        //Binary input for additiom
u=bin2dec('1001')        //Binary input for multiplication
v=bin2dec('0011')           //Binary input for multiplication

//Outputs
c=a+b                 //Addition of given numbers
d=dec2bin(c)           //Decimal to binary conversion
w=u*v                //Multiplication of given numbers
x=dec2bin(w)           //Decimal to binary conversion

//Results
disp('Addition of the given binary numbers: ')
disp(d)
disp('Multiplication of the given binary numbers: ')
disp(x)

//Outputs
//Addition of the given binary numbers: 1100

//Multiplication of the given binary numbers: 11011



