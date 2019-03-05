//f=x^y^z+wxz+xy+v^w^yz^
clc;
exec('number_of.sci');
exec('noof3.sci');
exec('check.sci');
n=4;
k=[0 0 0 0;
   1 0 1 1;
   0 1 1 0;
   1 1 1 0];
k(:,:,2)=[0 0 0 0;
          1 0 1 1;
          0 1 1 0;
          0 1 1 0];
//k=[1 0 0 0;
//   0 0 0 0;
//   0 0 0 0;
//   0 0 1 0];
//k(:,:,2)=[1 0 0 0;
//          0 0 0 0;
//          0 0 0 0;
//          1 0 0 0];
k(:,:,3)=zeros(n,n);
k(:,:,4)=zeros(n,n);
var=['y' 'z' 'v' 'w' 'x'];
p1=['y''z''' 'y''z' 'yz' 'yz'''];
p2=['v''w''x''';'v''w''x';'v''wx';'v''wx''';
'vw''x''';'vw''x';'vwx';'vwx'''];
cmn16=9;
cmn8=5;
cmn4=3;
cmn2=2;
temp=1;
    printf('The minimal ecpression of the given Kmap ');
    disp(k(:,:,1));
    disp(k(:,:,2));
    disp("is :");
printf('f');
printf("=");
//32 cells
for i=1:n
    for j=1:n
        for l=1:2
            if(k(i,j,l)~=1 &amp; k(i,j,l)~=2)
                temp=0;
                break;
             end
        end
    end
end
if(temp==1)
    printf("1");
    abort;
end
//16 cells
//8+8 row cells
z1=ones(2,4,2);
z2=ones(4,2,2);
temp1=['00' '01' '11' '10'];
temp2=['000' '001' '011' '010' '100' '101' '111' '110'];
for i=1:n
        if(i==4)
            t=1;
        else
            t=i+1;
        end
        z=[k(i,:,1:2);k(t,:,1:2)];
        z1=[k(i,:,3:4);k(t,:,3:4)];
        if(noof3(z,0)==0 &amp; noof3(z1,1)<cmn16) k(i,:,3:4)="ones(4,2);" k(t,:,3:4)="ones(4,2);" a="strsplit(temp1(1,i));" b="strsplit(temp1(1,t));" c="strcmp(a,b);" for="" in="1:max(size(c))" if(c(in)="=0" &="" a(in)="='0')" printf('%s''',var(in));="" else="" printf(var(in));="" end="" 8+8="" column="" cells="" j="1:n" if(j="=4)" t="1;" z="[k(:,j,1:2)" k(:,t,1:2)];="" z1="[k(:,j,3:4)" k(:,t,3:4)];="" if(noof3(z,0)="=0" noof3(z1,1)<cmn16)="" k(:,j,3:4)="ones(4,2);" k(:,t,3:4)="ones(4,2);" d="strsplit(temp2(1,t+4));" c1="check(a,b,c,d);" if(c1(in)="=0" printf('%s''',var(2+in));="" printf(var(2+in));="" printf("+");="" 4x4="" front="" matrix="" if(number_of(k(:,:,1),0)="=0" number_of(k(:,:,3),1)<cmn16)="" printf(var(3));="" printf('''');="" k(:,:,3)="ones(4,4);" rear="" if(number_of(k(:,:,2),0)="=0" number_of(k(:,:,4),1)<cmn16)="" k(:,:,4)="ones(4,4);" 8="" 2x2="" and="" i="1:n" if(i="=4)" u="1;" z(1,2,:)="k(i,u,1:2);" z(2,1,:)="k(t,j,1:2);" z(2,2,:)="k(t,u,1:2);" z1(1,2,:)="k(i,u,3:4);" z1(2,1,:)="k(t,j,3:4);" z1(2,2,:)="k(t,u,3:4);" noof3(z1,1)<cmn8)="" k(i,j,3:4)="ones(1,1,2);" k(i,u,3:4)="ones(1,1,2);" k(t,j,3:4)="ones(1,1,2);" k(t,u,3:4)="ones(1,1,2);" 1x4="" printf(p1(i));="" 4x1="" 2x4="" z(2,:,1)="k(t,:,1);" z1(2,:,1)="k(t,:,3);" if(number_of(z,0)="=0" number_of(z1,1)<cmn8)="" printf('%s''',var(3));="" k(i,:,3)="ones(1,4);" k(t,:,3)="ones(1,4);" k(i,:,4)="ones(1,4);" k(t,:,4)="ones(1,4);" 4x2="" z(:,2,1)="k(:,u,1);" z1(:,2,1)="k(:,u,3);" k(:,j,3)="ones(4,1);" k(:,u,3)="ones(4,1);" printf('%s''',var(4+in));="" printf(var(4+in));="" k(:,j,4)="ones(4,1);" k(:,u,4)="ones(4,1);" 4="" number_of(z1,1)<cmn4)="" printf(p1(1,i));="" printf(p2(j,1));="" printf(p2(4+j,1));="" 2x1="" z(:,:,2)="[k(i,j,2)" k(t,j,2)];="" z1(:,:,2)="[k(i,j,4)" k(t,j,4)];="" noof3(z1,1)<cmn4)="" printf('+');="" k(i,j,3)="1;k(t,j,3)=1;" k(i,j,4)="1;" k(t,j,4)="1;" 1x2="" k(i,u,1)];="" k(i,u,2)];="" k(i,u,3)];="" k(i,u,4)];="" noof3(z1,1)<1)="" k(i,u,3)="1;" k(i,u,4)="1;" 2="" number_of(z1,1)<cmn2)="" k(t,j,3)];="" printf(p2(j,1))="" printf(p2(4+j,1))="" 1="" cell="" noof3(z1,1)<cmn2)="" if(a(in)="='0'" c(in)="=0)" single="" if(k(i,j,z)="=1" k(i,j,z+2)="=0)" printf('0');<="" div=""></cmn16)>