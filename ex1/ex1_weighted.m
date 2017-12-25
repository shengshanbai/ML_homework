clear ; close all; clc
%%读取数据
data = load('ex1data1.txt');
X = data(:, 1); y = data(:, 2);
%%使用梯度下降法求J函数最小值
m = length(y);
X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters
predictX=[1, 3.5];

% Some gradient descent settings
iterations = 1500;
alpha = 0.01;
%权重带宽
tau=1;
J=computeWeightedCost(X, y, theta,predictX,tau);
fprintf('初始cost:%f',J);
theta = gradientWeightDescent( X, y, theta, alpha, iterations,predictX,tau )

predict1 = predictX *theta;
fprintf('For population = 35,000, we predict a profit of %f\n',...
    predict1*10000);

%改变tau
tau=2;
theta = gradientWeightDescent( X, y, theta, alpha, iterations,predictX,tau )

predict2 = predictX *theta;
fprintf('For population = 35,000, we predict a profit of %f\n',...
    predict2*10000);