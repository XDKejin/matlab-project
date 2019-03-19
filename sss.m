
clc
clear all
close all
c=[0,0,0,0,0,0,0,1];
c1=c;c2=c;c3=c;c4=c;c5=c;c6=c;c7=c;c8=c;c9=c;c10=c;
c11=c;c12=c;c13=c;c14=c;c15=c;c16=c;c17=c;c18=c;



for i=1:247
    c13(i+8)=mod(c13(i+7)+c13(i+6)+c13(i+1)+c13(i),2);
    c12(i+8)=mod(c12(i+7)+c12(i+2)+c12(i+1)+c13(i),2); 
end



tmp0 = [c13,c13];
tmp1 = [c12,c12];

g0 = zeros(1,255);
g1 = zeros(1,255);

SSS_seq = [];


for id1 = 0:2
    
    for id2 = 0:335
        m0 = 5*(id1 + 3*(floor(id2/112)));
        m1 = mod(id1,112);
        
       
        for k = 1:255
            g0(k) = tmp0(m0+k);
            g1(k) = tmp1(m1+k);
            
        end
        
        
        g = mod((g0+g1),2);        
        
%         SSS_seq 是255*1008 长度的向量 用{0 ，1} 表示
        SSS_seq = [SSS_seq ; g];
        
    end
    
end


% 对每一条 gold 序列进行互相关的分析
%1008条序列，两两互相关
%第i条序列 SSS_seq ((i-1)*255:i*255)
%第j条序列 SSS_seq ((i-1)*255:i*255)

Re = [];

for i = 1:1008
    for j = i:1008
        Re = [Re ; fushufhxg(SSS_seq(i,:) , SSS_seq(j,:))];
    end
end




