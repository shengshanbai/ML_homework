function [theta, J_history] = gradientWeightDescent( X, y, theta, alpha, num_iters,predictX,tau )
%GRADIENTWEIGHTDESCENT 此处显示有关此函数的摘要
%   此处显示详细说明

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    theta_temp = theta;

    for i = 1:m
        theta_temp(1) = theta_temp(1) - alpha * weight(X(i,1),predictX,tau)*(X(i,1)*theta(1) + X(i,2)*theta(2) - y(i)) * X(i,1)/m;
        theta_temp(2) = theta_temp(2) - alpha * weight(X(i,1),predictX,tau)*(X(i,1)*theta(1) + X(i,2)*theta(2) - y(i)) * X(i,2)/m;
    end

    theta = theta_temp;
    J_history(iter) = computeWeightedCost(X, y, theta,predictX,tau);
end
end

