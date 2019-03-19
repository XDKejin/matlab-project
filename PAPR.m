clc
clear all
close all
c1=[1,0,0,0,0,0,0,0];
for i=1:247
c1(i+8)=mod(c1(i+7)+c1(i+2)+c1(i+1)+c1(i),2);
end
n=0
C=[c1,c1];
for i=1:255
%     R(i,:)=C(i:i+254);
    p(n)=10*log10(max(c1(1)).^2/(mean(c1(1).^2)))
    n=n+1;
end