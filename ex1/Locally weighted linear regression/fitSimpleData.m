%{
�򵥵����Լ�Ȩ�ֲ��ع�����
%}
% ��ȡ���ش洢������
data=dlmread('simpleData.txt');
x=data(:,1)
y=data(:,2)

clf
hold on
%��ͼ
plot(x,y,'bx');
%һ���������
p=polyfit(x,y,1);
x1=linspace(min(0),max(7));
y1=polyval(p,x1);
plot(x1,y1,'b');
%�������귶Χ
axis([0 7 0 4.5]);
hold off
pause;

clf
hold on
%��ͼ
plot(x,y,'bx');
%�����������
p=polyfit(x,y,2);
x1=linspace(min(0),max(7));
y1=polyval(p,x1);
plot(x1,y1,'b');
%�������귶Χ
axis([0 7 0 4.5]);
hold off
pause;

clf
hold on
%��ͼ
plot(x,y,'bx');
%����������
p=polyfit(x,y,5);
x1=linspace(min(0),max(7));
y1=polyval(p,x1);
plot(x1,y1,'b');
%�������귶Χ
axis([0 7 0 4.5]);
hold off
pause;
