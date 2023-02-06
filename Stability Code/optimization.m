clc;clear;
sHT=0:0.001:0.024;
sVT=sHT;
CMas=[];
CNbs=[];
CLbs=[];
for i=1:length(sVT)
    [CMa,CNb,CLb] = stabilityFun(sHT(i),sVT(i));
    CMas(i)=CMa;
    CNbs(i)=CNb;
    CLbs(i)=CLb;
end
hold on
plot(sVT,CNbs,'b',sVT,CLbs,'r')
yline(0.15,'--b')
yline(0.05,'--b')
yline(-0.15,'--r')
yline(-0.05,'--r')
legend({'CNbeta','CLbeta'},'Location','southwest')
xlabel('Area of vertical tail')