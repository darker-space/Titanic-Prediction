function [J_val ,gradient]= logisticCost(theta,X,y,lambda)

m=size(y,1);
J_val=0;
gradient=zeros(size(theta,1),1);

J_val=(-1/(2*m))*(y'*log(sigmoid(X*theta))+(1-y)'*log(1-sigmoid(X*theta)))+(lambda/(2*m))*(theta'*theta-theta(1)*theta(1));

gradient=(1/m)*(X'*(sigmoid(X*theta)-y))+(lambda/m)*theta;
gradient(1)=(1/m)*sum(sigmoid(X*theta)-y);
