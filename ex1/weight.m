function w = weight( x,px,tau )
%WEIGHT 计算某个位置的权重
%   tau是带宽参数
w=exp(-(x-px)*(x-px)'/2*tau^2);
end

