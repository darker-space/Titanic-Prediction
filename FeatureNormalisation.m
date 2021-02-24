function [X mean1 sigma]=FeatureNormalisation(X)

n=size(X,2);

index=[3 6 7 8];
%index=[];
mean1=zeros(1,size(index,2));
sigma=zeros(1,size(index,2));

for i=1:size(index,2)
    ii=index(i);
    X(:,ii)=(X(:,ii)-mean(X(:,ii)))./std(X(:,ii));
    mean1(i)=mean(X(:,ii));
    sigma(i)=std(X(:,ii));
end;

