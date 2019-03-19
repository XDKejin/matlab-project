clc
clear all
% close all
c=[0,0,0,0,0,0,0,1];
c13=c;

for i=1:247
    
        c13(i+8)=mod(c13(i+7)+c13(i+6)+c13(i+1)+c13(i),2);
       
end
C=[c13,c13];
for i=72:1:74
    R(i,:)=C(i:i+254);
     Rx(i)=10*log10(max(R(i,:)).^2/(mean(R(i,:).^2)));   
end

m=1;

% for i=1:254
%     for j=i:255
%         if(i~=j)
%             
%             Re(m)=fmhuxiangguan(R(i,:),R(j,:))/255;
%               
%             m=m+1;
%         end
%         
%     end
% end
% result=sort(Re);
[papr,prob]=ccdf1(Rx,3)

plot(papr,prob,'-r')
% 
 xlabel('PAPR����ֵ/dB');ylabel('CCDF')
% legend('');
% title('clipping��CCDF���߱Ƚ�');
hold on

% semilogy(1:3,Re(1:3),'-r');
% grid on
% text(1,Re(1),'o','color','r')
% text(2,Re(2),'o','color','r')
% text(3,Re(3),'o','color','r')
legend('����127������CCDF','����255������CCDF');
% 
title('����Ϊ127�����м�255���еķ���ȱ仯���');