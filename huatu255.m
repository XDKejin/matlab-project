clc
clear all
close all
c=[0,1,1,0,1,1,1];
c1=c;
% c2=c;c3=c;c4=c;c5=c;c6=c;c7=c;c8=c;c9=c;c10=c;
% c11=c;c12=c;c13=c;c14=c;c15=c;c16=c;c17=c;c18=c;
% re=[];

for i=1:120
        c1(i+7)=mod(c1(i+4)+c1(i),2);

end

C=[c1,c1];
for i=1:43:87
    R(i,:)=C(i:i+126);
    Rx(i)=10*log10(max(R(i,:)).^2/(mean(R(i,:).^2)));
end

m=1;
% t=1;
% for i=1:126
%     for j=i:127
%         if(i~=j)
%             Re(m)=fm127huxiangguan(R(i,:),R(j,:))/127;
% %             Rx(i)=10*log10(max(R(i,:)).^2/(mean(R(i,:).^2)));
% %             if(Re(m)==9)
% %                 re(t,1)=i;
% %                 re(t,2)=j;
% %                 t=t+1;
% %             end
% %             
%             m=m+1;
%         end
%         
%     end
% end
[papr,prob]=ccdf1(Rx,3)

plot(papr,prob,'-b')
% result=sort(Re);


hold on
grid on
% text(1,Re(1),'o','color','b')
% text(2,Re(2),'o','color','b')
% text(3,Re(3),'o','color','b')
% semilogy(1:3,Re(1:3),'-b');
% % legend('长度127的序列，移位0,43,86的归一化互相关');
% title('序列相关值');
% hold on