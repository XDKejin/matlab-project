%% ���е���غ���(���������) N��������
%% X,Y Ϊ���������
%% N Ϊ ���еĳ���
function Re=AperiodicN(X,Y,N)
% X=[1+i,1-i]
% lenx=length(X);%��X���� 

R=zeros(1,N);
for t=1:N
    Rx=0;
    Y1=Y(t:N);
    lenx=length(Y1);
    for m=1:lenx
        Rx=Rx+(-1)^(X(m)+Y1(m));
    end
    R(t)=abs(Rx);
end
Re=max(R);