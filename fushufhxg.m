%�������еĻ���غ���(���������)
function Rx=fushufhxg(X,Y)
lenx=length(X);%x,y�������
Rx=zeros(1,lenx);
    for m=1:lenx
     for n=1:lenx
         if ((n+m-1)>lenx)
              Y(n+m-1)=0;
              Rx(m)=Rx(m)+X(n).*conj(Y(n+m-1));%ȡ����  X������Y����             
         else
              Rx(m)=Rx(m)+X(n).*conj(Y(n+m-1));
         end
         Rx(m)=abs(Rx(m));
     end
     end
end