%���е���غ���(ͬ�����)
function Re=fm127huxiangguan(X,Y)
% X=[1+i,1-i]
% lenx=length(X);%��X���� 
R=zeros(1,127);
for t=1:127
    Rx=0;
    Y1=Y(t:127);
    lenx=length(Y1);
    for m=1:lenx
        Rx=Rx+(-1)^(X(m)+Y1(m));
    end
    R(t)=abs(Rx);
end
Re=max(R);