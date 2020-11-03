//SCILAB version: 5.5.2
//Operating system: Windows 7 Ultimate
clc;                            //To clear the console screen
clear;                          //To clear all the existing variables in the memory
exec('.\fsolve1.sci');
//Replace '.' present inside the 'exec('')' with the path to the folder location where the dependency fsolve1.sci file is saved.


//Given data
Difference=4                    //'Difference' is the difference between the numbers
Sum=20


//Calculation
Number0=[1 1]                   //Number0 is the matrix containing guess value for the actual numbers
Number=fsolve(Number0,fsolve1)  //Number is the matrix consisting 'x' and 'y'.


//Display of result
mprintf('\nNumbers are x=%d and y=%d.',Number(1),Number(2))
