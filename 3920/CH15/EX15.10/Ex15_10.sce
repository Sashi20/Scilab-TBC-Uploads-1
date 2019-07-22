// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 15-10
//7 Complex Impedances with absolute value of 10-ohms are to be named

//Computations
printf("Seven complex impedances with absolute value of Z=10 ohms are :- \n")
n=0; //no of complex impedances found/displayed
    for i=0:10
        for j=0:10
            if (abs(complex(i,j))==10 && (i==0 || j==0) && n<7) //condition on i and j is imposed to avoid printing 10-j0 as 10+j0 is same as this, 
                    printf("%d.  %d + j%d\n",n+1,i,j); n=n+1;
                    printf("%d.  %d + j%d\n",n+1,j,i); n=n+1;
                    printf("%d.  %d - j%d\n",n+1,i,j); n=n+1;
                end
            if (abs(complex(i,j))==10 && (i~=0 && j~=0) && n<7)
                    printf("%d.  %d + j%d\n",n+1,i,j); n=n+1;
                    printf("%d.  %d - j%d\n",n+1,i,j); n=n+1;
                    printf("%d.  %d + j%d\n",n+1,j,i); n=n+1;
                    printf("%d.  %d - j%d\n",n+1,j,i); n=n+1;
                  end
                end
            end
