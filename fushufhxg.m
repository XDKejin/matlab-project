%复数序列的互相关函数(非周期相关)
function Rx=fushufhxg(X,Y)
lenx=length(X);%x,y长度相等
Rx=zeros(1,lenx);
    for m=1:lenx
     for n=1:lenx
         if ((n+m-1)>lenx)
              Y(n+m-1)=0;
              Rx(m)=Rx(m)+X(n).*conj(Y(n+m-1));%取共轭  X不动，Y左移             
         else
              Rx(m)=Rx(m)+X(n).*conj(Y(n+m-1));
         end
         Rx(m)=abs(Rx(m));
     end
     end
end