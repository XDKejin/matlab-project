%SLM 方法的CCDF
clear all;
close all;
clc
c1=128;
n1=1000; 
MM=8;
NN=4:.1:10;%CCDF的门限值
ccdf0=zeros(1,61);
ccdf1=ccdf0;
for k=1:c1;
p=randsrc(1,c1,[+1,-1,+1j,-1j]);
p1(k,:)=p;
% x=2*pi*(k-1)/128;
% p(k)=cos(x)+i*sin(x);
end;
for j=1:n1; 
a=(-1+2*round(rand(c1,1))).'+1i*(-1+2*round(rand(c1,1))).';%QPSK映射
w1=ifft(a);%ofdm调制
w1=w1*c1;
x1=(abs(w1)).^2;
m1=mean(x1);
v1=max(x1);
papr0(j)=10*log10(v1/m1);%峰均比定义
for k=1:MM; %slm的循环次数
% p=randsrc(1,c1,[+1,-1,+j,-j]);
% p1=p.^k;
y3=a.*p1(k,:);%信号序列和相位序列相乘
w2=ifft(y3);
w2=w2*c1;
x2=(abs(w2)).^2;
m2=mean(x2);
v2=max(x2);
papr3(j,k)=10*log10(v2/m2);
papr1(k)=10*log10(v2/m2);
end;
papr2(j)=min(papr1); %最小序列
for l=1:60;
if papr0(j)>NN(l);
ccdf0(l)=ccdf0(l)+1;
end; 
if papr2(j)>NN(l);
ccdf1(l)=ccdf1(l)+1;
end;
end;
end;
ccdf2=ccdf0./n1;
ccdf3=ccdf1./n1;
% NN=4:.1:10;
semilogy(NN,ccdf2,'r',NN,ccdf3,'b')
title('SLM方法PAPR的CCDF曲线')
xlabel('PAPR(dB)'),ylabel('互补累积分布函数CCDF')
% legend('未使用SLM','使用SLM后',2)