//Deletion from the list:
function[link2]=append(ele,link1)
  link2=list(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,,0,0);
  if(link1(1)(1).add==0)
    link1(1)(1).data=ele;
    link1(1)(1).add=1;
    link1(1)(1).nexadd=0;
    link1(1)(1).prevadd=0;
    link2(1)=link1(1)(1);
    else
    if(link1(1)(1).nexadd==0)
      lin2=link1(1)(1);
      lin2.data=ele;
      lin2.add=link1(1)(1).add+1;
      link1(1)(1).nexadd=lin2.add;
      lin2.nexadd=0;
      lin2.prevadd=link1(1)(1).add;
      link2(1)=link1(1)(1);
      link2(2)=lin2;
    else
      lin2=link1(1)(1);
      i=1;
      while(link1(i)(1).nexadd~=0)
        i=i+1;
      end
      j=i;
      lin2.data=ele;
      lin2.add=link1(i).add+1;
      lin2.nexadd=0;
      link1(i).nexadd=lin2.add;
      lin2.prevadd=link1(i).add;
      link2(1)=link1(1)(1);
      i=2;
      while(link1(i).nexadd~=lin2.add)
        link2(i)=(link1(i));
        i=i+1;
      end
      link2(i)=link1(i);
      link2(i+1)=lin2;
    end
  end
endfunction
function[link2]=add(ele,pos,link1);
   link2=list(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,,0,0);
   i=1;
   while(i<=pos)
     if(link1(i).nexadd==0)
       break;
     else
       i=i+1;
     end
   end
   if(link1(i).nexadd~=0)
     i=i-1;
      lin2.data=ele;
      lin2.add=i;
      j=i;
      while(link1(j).nexadd~=0)
        link1(j).prevadd=link1(j).prevadd+1;
        link1(j).add=link1(j).add+1;
        link1(j).nexadd=link1(j).nexadd+1;
        j=j+1;
      end
      link1(j).prevadd=link1(j).prevadd+1;
      link1(j).add=link1(j).add+1;
      lin2.nexadd=link1(i).add;
      link1(i).prevadd=lin2.add;
      lin2.prevadd=link1(i-1).add;
      link1(i-1).nexadd=lin2.add;
      k=1;
      while(k<i)
         link2(k)=link1(k);
         k=k+1;
       end
       link2(k)=lin2;
       k=k+1;
       link2(k)=link1(k-1);
       k=k+1
       l=k-1;
       while(k~=j)
         link2(k)=link1(l);
         k=k+1;
         l=l+1;
       end
       link2(j)=link1(j-1);;
       link2(j+1)=link1(j);
     else
       if(i==pos)
         k=1;
         lin2.data=ele;
         lin2.add=link1(i-1).add+1;
         link1(i).add=link1(i).add+1;
         lin2.nexadd=link1(i).add;
         link1(i).prevadd=lin2.add;
         lin2.prevadd=link1(i-1).add;
         k=1;
         while(k<pos)
           link2(k)=link1(k);
           k=k+1;
         end
         link2(k)=lin2;
         link2(k+1)=link1(k)
       end
     end
     
endfunction
function[link2]=delete1(pos,link1)
  link2=list(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,,0,0);
  i=1;
  while(i<=pos)
    if((link1(i).nexadd==0))
      break;
    else
      i=i+1;
    end
  end
  if(link1(i).nexadd~=0)
    i=i-1;
    j=1;
    if(i==1)
      j=1;
      while(link1(j).nexadd~=0)
        link2(j)=link1(j);
        j=j+1;
      end
      link2(j)=link1(j);
    else
      link1(i-1).nexadd=link1(i+1).add;
      link1(i+1).prevadd=link1(i-1).add;
    while(link1(j).nexadd~=link1(i+1).add)
      link2(j)=link1(j);
      j=j+1;
    end
    if(j~=i-1)
      link2(j)=link1(j);
      link2(j+1)=link1(j+1);
      k=i+1;
      l=2;
    else
      link2(j)=link1(j);
      k=i+1;
      l=1;
    end
    while(link1(k).nexadd~=0)
      link2(j+l)=link1(k);
      k=k+1;
      l=l+1;
    end  
    link2(j+l)=link1(k);
  end
  else
    if(i==pos)
      j=1;
      link1(i-1).nexadd=0;
      while(j<=i-1)
        link2(j)=link1(j);
        j=j+1;
      end
    end
  end
endfunction
//Calling Routine:
link1=struct('data',0,'add',0,'nexadd',0);
link1=append(4,link1);
link1=append(6,link1);
link1=add(10,2,link1);
link1=delete1(3,link1);
disp(link1,"After the above manipulation the list is");