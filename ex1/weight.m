function w = weight( x,px,tau )
%WEIGHT ����ĳ��λ�õ�Ȩ��
%   tau�Ǵ������
w=exp(-(x-px)*(x-px)'/2*tau^2);
end

