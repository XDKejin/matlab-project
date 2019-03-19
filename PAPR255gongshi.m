clc
clear all
close all
c=[1,0,0,0,0,0,0,0];
c1=c;c2=c;c3=c;c4=c;c5=c;c6=c;c7=c;c8=c;c9=c;c10=c;
c11=c;c12=c;c13=c;c14=c;c15=c;c16=c;c17=c;c18=c;
for i=1:247
        c1(i+8)=mod(c1(i+4)+c1(i+3)+c1(i+2)+c1(i),2);
        c2(i+8)=mod(c2(i+5)+c2(i+3)+c2(i+1)+c2(i),2);
        c3(i+8)=mod(c3(i+5)+c3(i+3)+c3(i+2)+c3(i),2);
        c4(i+8)=mod(c4(i+6)+c4(i+3)+c4(i+2)+c4(i),2);
        c5(i+8)=mod(c5(i+6)+c5(i+4)+c5(i+3)+c5(i+2)+c5(i+1)+c5(i),2);
        c6(i+8)=mod(c6(i+6)+c6(i+5)+c6(i+1)+c6(i),2);
        c7(i+8)=mod(c7(i+6)+c7(i+5)+c7(i+2)+c7(i),2);
        c8(i+8)=mod(c8(i+6)+c8(i+5)+c8(i+3)+c8(i),2);
        c9(i+8)=mod(c9(i+6)+c9(i+5)+c9(i+4)+c9(i),2);
        c10(i+8)=mod(c10(i+7)+c10(i+2)+c10(i+1)+c10(i),2);
        c11(i+8)=mod(c11(i+7)+c11(i+3)+c11(i+2)+c11(i),2);
        c12(i+8)=mod(c12(i+7)+c12(i+5)+c12(i+3)+c12(i),2);
        c13(i+8)=mod(c13(i+7)+c13(i+6)+c13(i+1)+c13(i),2);
        c14(i+8)=mod(c14(i+7)+c14(i+6)+c14(i+3)+c14(i+2)+c14(i+1)+c14(i),2);
        c15(i+8)=mod(c15(i+7)+c15(i+6)+c15(i+5)+c15(i+2)+c15(i+1)+c15(i),2);
        c16(i+8)=mod(c16(i+7)+c16(i+6)+c16(i+5)+c16(i+4)+c16(i+2)+c16(i),2);
end
C=[c13,c13];
for i=1:255
    R(i,:)=C(i:i+254);
    Rx(i)=10*log10(max(R(i,:)).^2/(mean(R(i,:).^2)));
end
% max(c1).^2/(mean(c1.^2))
% max(c2).^2/(mean(c2.^2))
% max(c3).^2/(mean(c1.^3))
% max(c4).^2/(mean(c2.^4))
% max(c5).^2/(mean(c5.^2))
% max(c6).^2/(mean(c6.^2))
% max(c7).^2/(mean(c7.^3))
% max(c8).^2/(mean(c8.^4))
% max(c9).^2/(mean(c9.^2))
% max(c10).^2/(mean(c10.^2))
% max(c11).^2/(mean(c11.^3))
% max(c12).^2/(mean(c12.^4))
% max(c13).^2/(mean(c13.^2))
% max(c14).^2/(mean(c14.^2))
% max(c15).^2/(mean(c15.^3))
% max(c16).^2/(mean(c16.^4))

% C=[c12,c12];
% for i=1:255
%     R(i,:)=C(i:i+254);
% end
% m=1;
% for i=1:254
%     for j=i:255
%         if(i~=j)
%             Rx(m)=mhuxiangguan(R(i,:),R(j,:));
%             m=m+1;
%         end
%     end
% end
% sort(Rx);
