clc
clear
close
//**************part(a)****************
A =[1 0;1 -1];
[V,lambda ]= spec(A);
B=[1;0];
C=[1 -2];
P= inv(V);
Bh=P*B
Ch=C*inv(P)
disp( ' part(a): ' )
disp(Bh ,"B^=")
disp(Ch ,"C^=")
//*********************part(b)*********
A=[ -1 0; -2 1];
[V, lambda ]= spec (A);
B =[1;1];
C =[0 1];
P= inv (V);
Bh =P*B
Ch =C*inv(P)
disp(' Part(b): ' )
disp(Bh ,"B^=")
disp(Ch ," C^=")
