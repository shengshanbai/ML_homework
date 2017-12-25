function J = computeWeightedCost(X, y, theta,predictX,tau)
J = 0;
m=length(y);

for i = 1:m
	J =J + weight(X(i,:),predictX,tau)*(X(i,1)*theta(1) + X(i,2)*theta(2) - y(i))^2;
end

J = J/2*m;

end
