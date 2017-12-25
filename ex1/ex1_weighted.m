clear ; close all; clc
%%��ȡ����
data = load('ex1data1.txt');
X = data(:, 1); y = data(:, 2);
%%ʹ���ݶ��½�����J������Сֵ
m = length(y);
X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters
predictX=[1, 3.5];

% Some gradient descent settings
iterations = 1500;
alpha = 0.01;
%Ȩ�ش���
tau=1;
J=computeWeightedCost(X, y, theta,predictX,tau);
fprintf('��ʼcost:%f',J);
theta = gradientWeightDescent( X, y, theta, alpha, iterations,predictX,tau )

predict1 = predictX *theta;
fprintf('For population = 35,000, we predict a profit of %f\n',...
    predict1*10000);

%�ı�tau
tau=2;
theta = gradientWeightDescent( X, y, theta, alpha, iterations,predictX,tau )

predict2 = predictX *theta;
fprintf('For population = 35,000, we predict a profit of %f\n',...
    predict2*10000);