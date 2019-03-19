%% 序列的相关函数(非周期相关) N长的序列
%% X,Y 为输入的序列
%% N 为 序列的长度
function Re=AperiodicN(X,Y,N)
% X=[1+i,1-i]
% lenx=length(X);%求X长度 

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