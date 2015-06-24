//Example 1.16
//Addition
//Page no. 14
clc;close;clear;

function [x1]=add(x,y)                  //function for addition of binaries
    c=0;
    printf('Addition of %.4i and %.4i= ',x,y)
    for i=1:4
        x1(1,i)=0
    end
    for i=4:-1:1
        x=x/10;
        xd=x-fix(x)
        x=x-xd;
        y=y/10;
        yd=y-fix(y)
        y=y-yd;
        if c==1 then
            if floor((xd*10)+0.1)==1 & floor((yd*10)+0.1)==1 then
                x1(1,i)=1;c=1;
            elseif floor((xd*10)+0.1)==0 & floor((yd*10)+0.1)==0
                x1(1,i)=1;c=0;
            else
                x1(1,i)=0;c=1;
            end
        else
            if floor((xd*10)+0.1)==1 & floor((yd*10)+0.1)==1 then
                x1(1,i)=0;c=1;
            elseif floor((xd*10)+0.1)==0 & floor((yd*10)+0.1)==0
                x1(1,i)=0;c=0;
            else
                x1(1,i)=1;c=0;
            end
        end
    end
    
    disp(x1)
endfunction
add(0010,0101);
add(1110,1011);
add(1110,0101);
add(0010,1011);
add(1110,0010);
add(0000,0000);