disp('the given matrix is:')
A=[1 3 0 2;-2 -5 7 4;3 5 2 1;1 -1 2 -3]
disp(A,'A=')
disp('performing row operations')
A(2,:)=A(2,:)-(A(2,1)/A(1,1))*A(1,:)
A(3,:)=A(3,:)-(A(3,1)/A(1,1))*A(1,:)
A(4,:)=A(4,:)-(A(4,1)/A(1,1))*A(1,:)
disp(A)
A(3,:)=A(3,:)-(A(3,2)/A(2,2))*A(2,:)
A(4,:)=A(4,:)-(A(4,2)/A(2,2))*A(2,:)
disp(A)
A(4,:)=A(4,:)-(A(4,3)/A(3,3))*A(3,:)
disp(A)
disp('det(A) is the product of diagonal entries')
disp(det(A),'det(A)=')