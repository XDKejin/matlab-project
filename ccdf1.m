function [papr0,pp]=ccdf1(p,len)
papr0=0:0.25:5;
prob=zeros(1,length(papr0));
for n=1:len
    for papr=0:0.25:5
        if p(n)>papr
            prob(papr*4+1)=prob(papr*4+1)+1;
        end
    end
end
pp=prob/len;