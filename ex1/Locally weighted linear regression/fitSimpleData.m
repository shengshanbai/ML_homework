%{
简单的线性加权局部回归的拟合
%}
% 读取本地存储的数据
data=dlmread('simpleData.txt');
x=data(:,1)
y=data(:,2)

clf
hold on
%画图
plot(x,y,'bx');
%一阶线性拟合
p=polyfit(x,y,1);
x1=linspace(min(0),max(7));
y1=polyval(p,x1);
plot(x1,y1,'b');
%设置坐标范围
axis([0 7 0 4.5]);
hold off
pause;

clf
hold on
%画图
plot(x,y,'bx');
%二阶线性拟合
p=polyfit(x,y,2);
x1=linspace(min(0),max(7));
y1=polyval(p,x1);
plot(x1,y1,'b');
%设置坐标范围
axis([0 7 0 4.5]);
hold off
pause;

clf
hold on
%画图
plot(x,y,'bx');
%五阶线性拟合
p=polyfit(x,y,5);
x1=linspace(min(0),max(7));
y1=polyval(p,x1);
plot(x1,y1,'b');
%设置坐标范围
axis([0 7 0 4.5]);
hold off
pause;
