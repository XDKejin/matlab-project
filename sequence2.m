
clc
clear all
close all
% u1=1;
% u2=0;
% u3=1;
% u4=0;
% u5=1;
% v1=0;
% v2=1;
% v3=0;
% v4=1;
% v5=0;
v=[0,2,0,3,3,1,1,2,1,4,0,0,4,4,0,1,4,1,2,1,0,3,3,0,2,1, ... 
    2,0,3,3,0,1,2,1,4,1,0,4,4,0,0,4,1,2,1,1,3,3,0,2 ...
    0,2,0,3,3,1,1,2,1,4,0,0,4,4,0,1,4,1,2,1,0,3,3,0,2,1, ... 
    2,0,3,3,0,1,2,1,4,1,0,4,4,0,0,4,1,2,1,1,3,3,0,2];
u=[1,2,1,3,4,1,2,2,2,4,1,0,0,4,1,1,0,1,3,1,1,3,4,0,3,1 ...
    3,0,4,3,1,1,3,1,0,1,1,4,0,0,1,4,2,2,2,1,4,3,1,2 ...
    1,2,1,3,4,1,2,2,2,4,1,0,0,4,1,1,0,1,3,1,1,3,4,0,3,1 ...
    3,0,4,3,1,1,3,1,0,1,1,4,0,0,1,4,2,2,2,1,4,3,1,2 ];

c4=[];
for t1=1:1:50
    c0=0;
    c1=0;
    c2=0;
    c3=0;
    
    for t=1:1:50
          c0=u(t+t1-1)-v(t) 
          c3=c3+c0
          c1=exp(2*pi*sqrt(-1)/5)^c0
          c2=c1+c2

    end
    c4(t1)=c2
    
end

